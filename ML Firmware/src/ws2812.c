/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */
#include "definitions.h"
#include <stdio.h>
#include <string.h>


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */
/** Descriptive Data Item Name

  @Summary
    Brief one-line summary of the data item.
    
  @Description
    Full description, explaining the purpose and usage of data item.
    <p>
    Additional description in consecutive paragraphs separated by HTML 
    paragraph breaks, as necessary.
    <p>
    Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.
    
  @Remarks
    Any additional remarks
 */
int global_data;

#define LED_COUNT 60
#define LED_BYTES_PER_PIXEL 4 // GRBW
#define LED_BUFFER_SIZE (LED_COUNT * LED_BYTES_PER_PIXEL)
#define MCP9808_ADDR 0x18
#define WS2812_DATA_PIN    PORT_PIN_PA11 // Example: change to your actual MOSI pin
#define RTC6_I2C_ADDR 0x6F // MCP79410 I2C address
#define RTC6_SEC_REG 0x00 // Seconds register
#define RTC6_MIN_REG 0x01 // Minutes register
#define RTC6_HOUR_REG 0x02 // Hours register

static uint8_t led_buffer[LED_BUFFER_SIZE];
volatile bool one_second_flag = false;
volatile bool ws2812_reset_done = false;
static uint32_t ms_counter = 0;
uint8_t hour = 8, minute = 59, second = 45;

// --- Mode selection ---
typedef enum {
    MODE_CLOCK = 0,
    MODE_TEMP,
    MODE_LIGHT,
    MODE_COUNT
} display_mode_t;

static display_mode_t current_mode = MODE_CLOCK;
static bool last_button_state = false;




/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */

/** 
  @Function
    int ExampleLocalFunctionName ( int param1, int param2 ) 

  @Summary
    Brief one-line description of the function.

  @Description
    Full description, explaining the purpose and usage of the function.
    <p>
    Additional description in consecutive paragraphs separated by HTML 
    paragraph breaks, as necessary.
    <p>
    Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.

  @Precondition
    List and describe any required preconditions. If there are no preconditions,
    enter "None."

  @Parameters
    @param param1 Describe the first parameter to the function.
    
    @param param2 Describe the second parameter to the function.

  @Returns
    List (if feasible) and describe the return values of the function.
    <ul>
      <li>1   Indicates an error occurred
      <li>0   Indicates an error did not occur
    </ul>

  @Remarks
    Describe any special behavior not described above.
    <p>
    Any additional remarks.

  @Example
    @code
    if(ExampleFunctionName(1, 2) == 0)
    {
        return 3;
    }
 */
static int ExampleLocalFunction(int param1, int param2) {
    return 0;
}


static inline void sk2812_delay(uint32_t cycles);
void sk2812_send_bitbang(const uint8_t *data, size_t len);

// --- Bit-bang SK2812GRBW (WS2812) function for SAMD21 ---
// Adjust these for your clock (values below are for 48MHz, 1 cycle = 20.83ns)
#define SK2812_T0H_CYCLES  3  // ~0.36us
#define SK2812_T0L_CYCLES  10  // ~0.75us
#define SK2812_T1H_CYCLES  10  // ~0.75us
#define SK2812_T1L_CYCLES  3  // ~0.36us


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

// *****************************************************************************

/** 
  @Function
    int ExampleInterfaceFunctionName ( int param1, int param2 ) 

  @Summary
    Brief one-line description of the function.

  @Remarks
    Refer to the example_file.h interface header for function usage details.
 */
int ExampleInterfaceFunction(int param1, int param2) {
    return 0;
}


static inline void sk2812_delay(uint32_t cycles)
{
    while (cycles--) {
        __asm__ __volatile__("nop");
    }
}

void sk2812_send_bitbang(const uint8_t *data, size_t len)
{
    // Code generated by MCHP Chatbot
    // Disable interrupts for precise timing
    __disable_irq();

    for (size_t i = 0; i < len; i++) {
        uint8_t byte = data[i];
        for (int8_t bit = 7; bit >= 0; bit--) {
            if (byte & (1 << bit)) {
                // '1' bit
                PORT_PinSet(WS2812_DATA_PIN);
                sk2812_delay(SK2812_T1H_CYCLES);
                PORT_PinClear(WS2812_DATA_PIN);
                sk2812_delay(SK2812_T1L_CYCLES);
            } else {
                // '0' bit
                PORT_PinSet(WS2812_DATA_PIN);
                sk2812_delay(SK2812_T0H_CYCLES);
                PORT_PinClear(WS2812_DATA_PIN);
                sk2812_delay(SK2812_T0L_CYCLES);
            }
        }
    }

    __enable_irq();
    // Hold low for reset (at least 80us)
    PORT_PinClear(WS2812_DATA_PIN);
    ws2812_reset_done = false;
    TC3_TimerStart();
    while (!ws2812_reset_done);
}


/* *****************************************************************************
 End of File
 */
