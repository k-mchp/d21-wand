/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdint.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "ringbuffer.h"
#include "sensor.h"
#include "app_config.h"
//#include "ws2812.h"
//#include "./../mplabml/inc/kb.h"
//#include "sml_output.h"
//#include "./../application/sml_recognition_run.h"

#if STREAM_FORMAT_IS(SMLSS)
#include "ssi_comms.h"
#endif //STREAM_FORMAT_IS(SMLSS)
// *****************************************************************************
// *****************************************************************************
// Section: Platform specific includes
// *****************************************************************************
// *****************************************************************************
#include "definitions.h"
#include "ws2812.h"

//comment out to operate in continuous mode(no trigger)
#define TRIGGER 1

// *****************************************************************************
// *****************************************************************************
// Section: Global variables
// *****************************************************************************
// *****************************************************************************

/* Must be large enough to hold the connect/disconnect strings from SensiML DCL */
#define UART_RXBUF_LEN  128
static uint8_t _uartRxBuffer_data[UART_RXBUF_LEN];
static ringbuffer_t uartRxBuffer;

static volatile uint32_t tickcounter = 0;
static volatile unsigned int tickrate = 0;

static struct sensor_device_t sensor;
static snsr_data_t _snsr_buffer_data[SNSR_BUF_LEN][SNSR_NUM_AXES];
static ringbuffer_t snsr_buffer;
static volatile bool snsr_buffer_overrun = false;
static volatile bool snsr_status = true;

// *****************************************************************************
// *****************************************************************************
// Section: Platform specific stub definitions
// *****************************************************************************
// *****************************************************************************
void SERCOM5_Handler() {
    ringbuffer_size_t rdcnt;
    uint8_t *ptr = ringbuffer_get_write_buffer(&uartRxBuffer, &rdcnt);
    if (UART_IsRxReady() && rdcnt) {
        *ptr = UART_RX_DATA;
        ringbuffer_advance_write_index(&uartRxBuffer, 1);
    }
}

size_t __attribute__(( unused )) UART_Write(uint8_t *ptr, const size_t nbytes) {
    return SERCOM5_USART_Write(ptr, nbytes) ? nbytes : 0;
}

void SERCOM1_Handler() {
   
}


// *****************************************************************************
// *****************************************************************************
// Section: Generic stub definitions
// *****************************************************************************
// *****************************************************************************
void Null_Handler() {
    // Do nothing
}

size_t __attribute__(( unused )) UART_Read(uint8_t *ptr, const size_t nbytes) {
    return ringbuffer_read(&uartRxBuffer, ptr, nbytes);
}

static void Ticker_Callback(TC_TIMER_STATUS status, uintptr_t context) {
    static uint32_t mstick = 0;

    ++tickcounter;
    if (tickrate == 0 || mstick > tickrate) {
        mstick = 0;
    }
    else if (++mstick == tickrate) {
        LED_STATUS_Toggle();
        LED_BUTTON_PA03_Toggle();
        mstick = 0;
    }
}

uint64_t read_timer_ms(void) {
    return tickcounter;
}

uint64_t read_timer_us(void) {
    return tickcounter * 1000U + (uint32_t) TC_TimerGet_us();
}

void sleep_ms(uint32_t ms) {
    uint32_t t0 = read_timer_ms();
    while ((read_timer_ms() - t0) < ms) { };
}

void sleep_us(uint32_t us) {
    uint32_t t0 = read_timer_us();
    while ((read_timer_us() - t0) < us) { };
}

// For handling read of the sensor data
void SNSR_ISR_HANDLER() {
    /* Check if any errors we've flagged have been acknowledged */
    if ((sensor.status != SNSR_STATUS_OK) || snsr_buffer_overrun)
        return;
    
    ringbuffer_size_t wrcnt;
    snsr_data_t *ptr = ringbuffer_get_write_buffer(&snsr_buffer, &wrcnt);
    
    if (wrcnt == 0)
        snsr_buffer_overrun = true;
    else if ((sensor.status = sensor_read(&sensor, ptr)) == SNSR_STATUS_OK)
      if(snsr_status)      
    	ringbuffer_advance_write_index(&snsr_buffer, 1);
}

#if STREAM_FORMAT_IS(SMLSS)
static char json_config_str[SML_MAX_CONFIG_STRLEN];

size_t ssi_build_json_config(char json_config_str[], size_t maxlen)
{
    size_t written=0;
    size_t snsr_index = 0;

    written += snprintf(json_config_str, maxlen,
            "{\"version\":%d"
            ",\"sample_rate\":%d"
            ",\"samples_per_packet\":%d"
            ",\"column_location\":{"
            , SSI_JSON_CONFIG_VERSION, SNSR_SAMPLE_RATE, SNSR_SAMPLES_PER_PACKET);
#if SNSR_USE_ACCEL
    written += snprintf(json_config_str+written, maxlen-written, "\"AccelerometerX\":%d,", snsr_index++);
    written += snprintf(json_config_str+written, maxlen-written, "\"AccelerometerY\":%d,", snsr_index++);
    written += snprintf(json_config_str+written, maxlen-written, "\"AccelerometerZ\":%d,", snsr_index++);
#endif
#if SNSR_USE_GYRO
    written += snprintf(json_config_str+written, maxlen-written, "\"GyroscopeX\":%d,", snsr_index++);
    written += snprintf(json_config_str+written, maxlen-written, "\"GyroscopeY\":%d,", snsr_index++);
    written += snprintf(json_config_str+written, maxlen-written, "\"GyroscopeZ\":%d", snsr_index++);
#endif
    if(json_config_str[written-1] == ',')
    {
        written--;
    }
    snprintf(json_config_str+written, maxlen-written, "}}\n");

    return written;
}

#endif //STREAM_FORMAT_IS(SMLSS)

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    
    
    int8_t app_failed = 0;
#if STREAM_FORMAT_IS(SMLSS)
    uint32_t ssi_adtimer = 0;
    ssi_io_funcs_t ssi_io_s;
#endif
#if STREAM_FORMAT_IS(WIFI)
    /*We are setting this manually assuming that both accel & gyro is used.
     *Eventually we need something more elegant to automatically set this based
     *on usage of IMU sensors. */
    uint8_t wifi_tx_buffer[15];
    uint8_t headerbyte = MDV_START_OF_FRAME;
    wifi_tx_buffer[0] = headerbyte;
    wifi_tx_buffer[14] = ~headerbyte;
#endif
    /* Initialize all modules */
    SYS_Initialize ( NULL );

    /* Register and start the millisecond interrupt ticker */
    TC_TimerCallbackRegister(Ticker_Callback);
    TC_TimerStart();
   
    printf("Magic Wand Streamer\r\n");

    /* Application init routine */
    app_failed = 1;
    
    //ws2812_init();
    //ws2812_set_pixel(0, 255, 255, 255);
    //ws2812_show();
    
    
    while (1)
    {
        /* Initialize the sensor data buffer */
        if (ringbuffer_init(&snsr_buffer, _snsr_buffer_data, sizeof(_snsr_buffer_data) / sizeof(_snsr_buffer_data[0]), sizeof(_snsr_buffer_data[0])))
            break;
    
        /* Initialize the UART RX buffer */
        if (ringbuffer_init(&uartRxBuffer, _uartRxBuffer_data, sizeof(_uartRxBuffer_data) / sizeof(_uartRxBuffer_data[0]), sizeof(_uartRxBuffer_data[0])))
            break;

        /* Enable the RX interrupt */
        UART_RXC_Enable();

        /* Init and configure sensor */
        if (sensor_init(&sensor) != SNSR_STATUS_OK) {
            printf("ERROR: sensor init result = %d\n", sensor.status);
            break;
        }

        if (sensor_set_config(&sensor) != SNSR_STATUS_OK) {
            printf("ERROR: sensor configuration result = %d\n", sensor.status);
            break;
        }

        printf("sensor type is %s\n", SNSR_NAME);
        printf("sensor sample rate set at %dHz\n", SNSR_SAMPLE_RATE);
#if SNSR_USE_ACCEL
        printf("accelerometer enabled with range set at +/-%dGs\n", SNSR_ACCEL_RANGE);
#else
        printf("accelerometer disabled\n");
#endif
#if SNSR_USE_GYRO
        printf("gyrometer enabled with range set at %dDPS\n", SNSR_GYRO_RANGE);
#else
        printf("gyrometer disabled\n");
#endif

#if STREAM_FORMAT_IS(SMLSS)
        /* Init SensiML simple-stream interface */
        ssi_io_s.ssi_read = UART_Read;
        ssi_io_s.ssi_write = UART_Write;
        ssi_io_s.connected = false;
        ssi_init(&ssi_io_s);
        ssi_build_json_config(json_config_str, SML_MAX_CONFIG_STRLEN);
#endif
 
        
    #if STREAM_FORMAT_IS(NONE)    
        /* Initialize MPLAB ML Knowledge Pack */
        kb_model_init();
        //sml_output_init(NULL);
        
        /* Display the model knowledge pack UUID */
        const uint8_t *ptr = kb_get_model_uuid_ptr(0);
        printf("Running MPLAB ML knowledge pack uuid ");
        printf("%02x", *ptr++); 
        for (int i=1; i < 15; i++) {
            if ((i%4) == 0)
                printf("-");
            printf("%02x", *ptr++); 
        }
        printf("%02x", *ptr++); 
        printf("\n");        
    #endif

        /* Activate External Interrupt Controller for sensor capture */
        MIKRO_INT_CallbackRegister(SNSR_ISR_HANDLER);

        /* STATE CHANGE - Application successfully initialized */
        tickrate = 0;
        LED_ALL_Off();
        LED_STATUS_On();

#if STREAM_FORMAT_IS(SMLSS)
        /* STATE CHANGE - Application now waiting for connect */
#elif !STREAM_FORMAT_IS(NONE)
        /* STATE CHANGE - Application is streaming */
        tickrate = TICK_RATE_SLOW;
#endif //STREAM_FORMAT_IS(SMLSS)

        app_failed = 0;
        break;
    }
    
    // Keep track of the current predicted class id
    int clsid = -1;
    
    while (!app_failed)
    {
        /* Maintain state machines of all system modules. */
        SYS_Tasks ( );

        if (sensor.status != SNSR_STATUS_OK) {
            printf("ERROR: Got a bad sensor status: %d\n", sensor.status);
            break;
        }
#if STREAM_FORMAT_IS(SMLSS)
        else if (!ssi_connected()) {
            if (ringbuffer_get_read_items(&uartRxBuffer) >= CONNECT_CHARS) {
                ssi_try_connect();
                ringbuffer_advance_read_index(&uartRxBuffer, ringbuffer_get_read_items(&uartRxBuffer));
            }
            if (ssi_connected()) {
                /* STATE CHANGE - Application is streaming */
                tickrate = TICK_RATE_SLOW;

                /* Reset the sensor buffer */
                MIKRO_INT_CallbackRegister(Null_Handler);
                ringbuffer_reset(&snsr_buffer);
                snsr_buffer_overrun = false;
                MIKRO_INT_CallbackRegister(SNSR_ISR_HANDLER);
            }
            if (read_timer_ms() - ssi_adtimer > 500) {
                ssi_adtimer = read_timer_ms();
                UART_Write((uint8_t *) json_config_str, strlen(json_config_str));
            }
        }
#endif
        else if (snsr_buffer_overrun == true) {
            printf("\n\n\nOverrun!\n\n\n");

            /* STATE CHANGE - buffer overflow */
            tickrate = 0;
            LED_ALL_Off();
            LED_STATUS_On(); LED_RED_On();
            sleep_ms(5000U);

            // Clear OVERFLOW
            MIKRO_INT_CallbackRegister(Null_Handler);
            ringbuffer_reset(&snsr_buffer);
            snsr_buffer_overrun = false;
            MIKRO_INT_CallbackRegister(SNSR_ISR_HANDLER);

            /* STATE CHANGE - Application is streaming or running inference */
            tickrate = TICK_RATE_SLOW;
            LED_ALL_Off();
            continue;
        }
#if !STREAM_FORMAT_IS(NONE)
        else if(ringbuffer_get_read_items(&snsr_buffer) >= SNSR_SAMPLES_PER_PACKET) {
            ringbuffer_size_t rdcnt;
            snsr_dataframe_t const *ptr = ringbuffer_get_read_buffer(&snsr_buffer, &rdcnt);
            while (rdcnt >= SNSR_SAMPLES_PER_PACKET) {
    #if STREAM_FORMAT_IS(ASCII)
                snsr_data_t const *scalarptr = (snsr_data_t const *) ptr;
                printf("%d", *scalarptr++);
                for (int j=1; j < sizeof(snsr_datapacket_t) / sizeof(snsr_data_t); j++) {
                    printf(" %d", *scalarptr++);
                }
                printf("\n");
    #elif STREAM_FORMAT_IS(MDV)
                uint8_t headerbyte = MDV_START_OF_FRAME;
                uint8_t triggerbyte = !(TRIGGER_PA02_Get());
                UART_Write(&headerbyte, 1);
                UART_Write((uint8_t *) ptr, sizeof(snsr_datapacket_t));
        #if (TRIGGER)
                UART_Write(&triggerbyte, 1);//add trigger to data stream
        #endif                
                headerbyte = ~headerbyte;
                UART_Write(&headerbyte, 1);
    #elif STREAM_FORMAT_IS(WIFI)
#if defined(UDP) 
                if(get_UDP_client_state() == UDP_CLIENT_STATE_READY)
#else                
                if(get_TCP_client_state() == TCP_CLIENT_READY_TO_SEND)
#endif                      
                {
                    /* Copy 12 bytes of sensor data into tx_buf starting at index 1.
                     * This is assuming both accel and gyro is used.
                     */
                    uint8_t triggerbyte = !(TRIGGER_PA02_Get());
                    memcpy(&wifi_tx_buffer[1], (uint8_t *) ptr, 12);
                    wifi_tx_buffer[13]=triggerbyte;
                    tx_wifi_new_sensordata(wifi_tx_buffer);
                }
    #elif STREAM_FORMAT_IS(SMLSS)
                #if (SSI_JSON_CONFIG_VERSION == 2)
                ssiv2_publish_sensor_data(0, (uint8_t*) ptr, sizeof(snsr_datapacket_t));
                #elif (SSI_JSON_CONFIG_VERSION == 1)
                ssiv1_publish_sensor_data((uint8_t*) ptr, sizeof(snsr_datapacket_t));
                #endif
    #endif //STREAM_FORMAT_IS(ASCII)
                ptr += SNSR_SAMPLES_PER_PACKET;
                rdcnt -= SNSR_SAMPLES_PER_PACKET;
                ringbuffer_advance_read_index(&snsr_buffer, SNSR_SAMPLES_PER_PACKET);
            }
        }
#else   /* Template code for processing sensor data */

#endif //!STREAM_FORMAT_IS(NONE)
         else {
            ringbuffer_size_t rdcnt;
            snsr_dataframe_t const *ptr = ringbuffer_get_read_buffer(&snsr_buffer, &rdcnt);
            
        #if STREAM_FORMAT_IS(NONE)
            while (rdcnt--) {
                snsr_status = false;
                int ret = sml_recognition_run((snsr_data_t *) ptr++, SNSR_NUM_AXES);
                snsr_status = true;
                ringbuffer_advance_read_index(&snsr_buffer, 1);
                
                if (ret >= 0) {
                    /* Do something with classification output */
                    clsid = ret; // Assign class ID
                    
                    switch ( clsid )
                    {
                        case 1://4
                        { 
                            ws2812_set_pixel(0, 0, 255, 0);//green
                            break;
                        }
                        
                        case 2://unkn
                        {
                            ws2812_set_pixel(0, 0, 128, 0);//yellow
                            break;
                        }
                         case 3://b
                        {
                            ws2812_set_pixel(0, 0, 255, 255);//cyan
                            break;
                        }                       
                         case 4://left
                        {
                            ws2812_set_pixel(0, 255, 0, 255);//violet
                            break;
                        }
                         case 5://right
                        {
                            ws2812_set_pixel(0, 255, 0, 0);//red
                            break;
                        }
                         case 6://tap
                        {
                            ws2812_set_pixel(0, 0, 0, 255);//blue
                            break;
                        }                           
                         
                    }
                    
                    
                    ws2812_show();
                }
            }            
        #endif

        }       

#if STREAM_FORMAT_IS(SMLSS)
        if (ssi_connected() && ringbuffer_get_read_items(&uartRxBuffer) >= DISCONNECT_CHARS) {
            ssi_try_disconnect();
            ringbuffer_advance_read_index(&uartRxBuffer, ringbuffer_get_read_items(&uartRxBuffer));
            if (!ssi_connected()) {
                /* STATE CHANGE - Application now waiting for connect */
                tickrate = 0;
                LED_ALL_Off();
                LED_STATUS_On();
            }
        }
#endif

    }

    tickrate = 0;
    LED_ALL_Off();
    LED_RED_On();
    
    /* Loop forever on error */
    while (1) {};

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/
