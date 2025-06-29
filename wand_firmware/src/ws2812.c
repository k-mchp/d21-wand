///* ************************************************************************** */
///** Descriptive File Name
//
//  @Company
//    Company Name
//
//  @File Name
//    filename.c
//
//  @Summary
//    Brief description of the file.
//
//  @Description
//    Describe the purpose of this file.
// */
///* ************************************************************************** */
//
///* ************************************************************************** */
///* ************************************************************************** */
///* Section: Included Files                                                    */
///* ************************************************************************** */
///* ************************************************************************** */
///* WS2812 LED Driver for SAM IoT WG Development Board (ATSAMD21G18A)
// * Compatible with MPLAB X IDE
// */
//
//#include "definitions.h"
//#include <stdio.h>
//#include <string.h>
//
///* ************************************************************************** */
///* WS2812/NeoPixel Configuration                                             */
///* ************************************************************************** */
//
//#define LED_COUNT 1
//#define LED_BYTES_PER_PIXEL 3 // GRB format for WS2812
//#define LED_BUFFER_SIZE (LED_COUNT * LED_BYTES_PER_PIXEL)
//
//// Pin configuration for SAM IoT Curiosity Board
//// Using PA08 - pin already configured as output in MCC
//#define WS2812_DATA_PIN    PORT_PIN_PA08
//
//// Timing constants for SAMD21 at 48MHz (20.83ns per cycle)
//// WS2812 specification: 800kHz (1.25?s per bit)
//// Logic "0": 33% duty cycle = 0.4?s high, 0.85?s low
//// Logic "1": 66% duty cycle = 0.8?s high, 0.45?s low
//#define WS2812_T0H_CYCLES  19   // 0.4?s (19 * 20.83ns = 0.396?s)
//#define WS2812_T0L_CYCLES  35   // 0.85?s (41 * 20.83ns = 0.854?s)
//#define WS2812_T1H_CYCLES  30   // 0.8?s (38 * 20.83ns = 0.791?s)
//#define WS2812_T1L_CYCLES  10   // 0.45?s (22 * 20.83ns = 0.458?s)
//#define WS2812_RESET_CYCLES 750 // 50?s reset time (2400 * 20.83ns = 50?s)
////#define WS2812_RESET_CYCLES 4800 // ~100us reset time (4800 * 20.83ns = 100us)
//
///* ************************************************************************** */
///* Global Variables                                                           */
///* ************************************************************************** */
//
//static uint8_t led_buffer[LED_BUFFER_SIZE];
//volatile bool ws2812_transmission_complete = false;
//
///* ************************************************************************** */
///* Function Prototypes                                                        */
///* ************************************************************************** */
//
//static inline void ws2812_delay_cycles(uint32_t cycles);
//void ws2812_send_data(const uint8_t *data, size_t len);
//void ws2812_set_pixel(uint8_t index, uint8_t red, uint8_t green, uint8_t blue);
//void ws2812_clear_all(void);
//void ws2812_show(void);
//void ws2812_init(void);
//
///* ************************************************************************** */
///* Implementation                                                             */
///* ************************************************************************** */
//
///**
// * @brief Initialize WS2812 LED driver
// */
//void ws2812_init(void)
//{
//    // Pin already configured as output in MCC - no configuration needed
//    
//    // Ensure pin starts low
//    PORT_PinClear(WS2812_DATA_PIN);
//    
//    // Clear the LED buffer
//    memset(led_buffer, 0, LED_BUFFER_SIZE);
//    
//    // Send initial clear command
//    ws2812_clear_all();
//    ws2812_show();
//}
//
///**
// * @brief Precise delay function using NOP instructions
// * @param cycles Number of CPU cycles to delay (accounting for function overhead)
// */
//static inline void ws2812_delay_cycles(uint32_t cycles)
//{
//    // Account for function call overhead (approximately 3-4 cycles)
//    if (cycles <= 4) {
//        return;
//    }
//    cycles -= 4;
//    
//    // Optimized NOP loop
//    while (cycles >= 8) {
//        __asm__ __volatile__(
//            "nop\n\t" "nop\n\t" "nop\n\t" "nop\n\t"
//            "nop\n\t" "nop\n\t" "nop\n\t" "nop\n\t"
//            ::: "memory"
//        );
//        cycles -= 8;
//    }
//    
//    // Handle remaining cycles
//    while (cycles--) {
//        __asm__ __volatile__("nop" ::: "memory");
//    }
//}
//
///**
// * @brief Send data to WS2812 LEDs using bit-banging
// * @param data Pointer to data buffer (GRB format)
// * @param len Length of data in bytes
// */
//void ws2812_send_data(const uint8_t *data, size_t len)
//{
//    // Disable interrupts for precise timing
//    __disable_irq();
//    
//    for (size_t i = 0; i < len; i++) {
//        uint8_t byte = data[i];
//        
//        // Send each bit, MSB first
//        for (int8_t bit = 7; bit >= 0; bit--) {
//            if (byte & (1 << bit)) {
//                // Send '1' bit: High for T1H, Low for T1L
//                PORT_PinSet(WS2812_DATA_PIN);
//                ws2812_delay_cycles(WS2812_T1H_CYCLES);
//                PORT_PinClear(WS2812_DATA_PIN);
//                ws2812_delay_cycles(WS2812_T1L_CYCLES);
//            } else {
//                // Send '0' bit: High for T0H, Low for T0L
//                PORT_PinSet(WS2812_DATA_PIN);
//                ws2812_delay_cycles(WS2812_T0H_CYCLES);
//                PORT_PinClear(WS2812_DATA_PIN);
//                ws2812_delay_cycles(WS2812_T0L_CYCLES);
//            }
//        }
//    }
//    
//    // Reset signal: Hold low for at least 50us
//    PORT_PinClear(WS2812_DATA_PIN);
//    ws2812_delay_cycles(WS2812_RESET_CYCLES);
//    
//    // Re-enable interrupts
//    __enable_irq();
//    
//    ws2812_transmission_complete = true;
//}
//
///**
// * @brief Set color for a specific LED
// * @param index LED index (0-based)
// * @param red Red component (0-255)
// * @param green Green component (0-255)
// * @param blue Blue component (0-255)
// */
//void ws2812_set_pixel(uint8_t index, uint8_t red, uint8_t green, uint8_t blue)
//{
//    if (index >= LED_COUNT) {
//        return; // Invalid index
//    }
//    
//    // WS2812 uses GRB format
//    uint16_t offset = index * LED_BYTES_PER_PIXEL;
//    led_buffer[offset + 0] = green;  // G
//    led_buffer[offset + 1] = red;    // R
//    led_buffer[offset + 2] = blue;   // B
//}
//
///**
// * @brief Clear all LEDs (set to black)
// */
//void ws2812_clear_all(void)
//{
//    memset(led_buffer, 0, LED_BUFFER_SIZE);
//}
//
///**
// * @brief Update the LED strip with current buffer contents
// */
//void ws2812_show(void)
//{
//    ws2812_transmission_complete = false;
//    ws2812_send_data(led_buffer, LED_BUFFER_SIZE);
//}
/* WS2812 LED Driver for SAM IoT WG Development Board (ATSAMD21G18A)
 * Compatible with MPLAB X IDE
 */
//-----------------------------------------------------

#include "definitions.h"
#include <stdio.h>
#include <string.h>

/* ************************************************************************** */
/* WS2812/NeoPixel Configuration                                             */
/* ************************************************************************** */

#define LED_COUNT 1
#define LED_BYTES_PER_PIXEL 3 // GRB format for WS2812
#define LED_BUFFER_SIZE (LED_COUNT * LED_BYTES_PER_PIXEL)

// Pin configuration for SAM IoT Curiosity Board
// Using PA08 - pin already configured as output in MCC
#define WS2812_DATA_PIN    PORT_PIN_PA02

// Timing constants for SAMD21 at 48MHz (20.83ns per cycle)
// WS2812 specification: 800kHz (1.25?s per bit)
// Logic "0": 33% duty cycle = 0.4?s high, 0.85?s low
// Logic "1": 66% duty cycle = 0.8?s high, 0.45?s low
#define WS2812_T0H_CYCLES  19   // 0.4?s (19 * 20.83ns = 0.396?s)
#define WS2812_T0L_CYCLES  11   // 0.85?s (41 * 20.83ns = 0.854?s)
#define WS2812_T1H_CYCLES  50   // 0.8?s (38 * 20.83ns = 0.791?s)
#define WS2812_T1L_CYCLES  2   // 0.45?s (22 * 20.83ns = 0.458?s)
#define WS2812_RESET_CYCLES 780 // 50?s reset time (2400 * 20.83ns = 50?s)

/* ************************************************************************** */
/* Global Variables                                                           */
/* ************************************************************************** */

static uint8_t led_buffer[LED_BUFFER_SIZE];
volatile bool ws2812_transmission_complete = false;

/* ************************************************************************** */
/* Function Prototypes                                                        */
/* ************************************************************************** */

static inline void ws2812_delay_cycles(uint32_t cycles);
void ws2812_send_data(const uint8_t *data, size_t len);
void ws2812_set_pixel(uint8_t index, uint8_t red, uint8_t green, uint8_t blue);
void ws2812_clear_all(void);
void ws2812_show(void);
void ws2812_init(void);

/* ************************************************************************** */
/* Implementation                                                             */
/* ************************************************************************** */

/**
 * @brief Initialize WS2812 LED driver
 */
void ws2812_init(void)
{
    // Pin already configured as output in MCC - no configuration needed
    
    // Ensure pin starts low
    PORT_PinClear(WS2812_DATA_PIN);
    
    // Clear the LED buffer
    memset(led_buffer, 0, LED_BUFFER_SIZE);
    
    // Send initial clear command
    ws2812_clear_all();
    ws2812_show();
}

/**
 * @brief Precise delay function using NOP instructions
 * @param cycles Number of CPU cycles to delay (accounting for function overhead)
 */
static inline void ws2812_delay_cycles(uint32_t cycles)
{
    // Account for function call overhead (approximately 3-4 cycles)
    if (cycles <= 4) {
        return;
    }
    cycles -= 4;
    
    // Optimized NOP loop
    while (cycles >= 8) {
        __asm__ __volatile__(
            "nop\n\t" "nop\n\t" "nop\n\t" "nop\n\t"
            "nop\n\t" "nop\n\t" "nop\n\t" "nop\n\t"
            ::: "memory"
        );
        cycles -= 8;
    }
    
    // Handle remaining cycles
    while (cycles--) {
        __asm__ __volatile__("nop" ::: "memory");
    }
}

/**
 * @brief Send data to WS2812 LEDs using optimized bit-banging
 * @param data Pointer to data buffer (GRB format)
 * @param len Length of data in bytes
 */
void ws2812_send_data(const uint8_t *data, size_t len)
{
    volatile uint32_t *set_reg = &PORT_REGS->GROUP[0].PORT_OUTSET;
    volatile uint32_t *clr_reg = &PORT_REGS->GROUP[0].PORT_OUTCLR;
    uint32_t pin_mask = (1 << 3); // PA03
    
    // Disable interrupts for precise timing
    __disable_irq();
    
    for (size_t i = 0; i < len; i++) {
        uint8_t byte = data[i];
        
        // Send each bit, MSB first
        for (int8_t bit = 7; bit >= 0; bit--) {
            if (byte & (1 << bit)) {
                // Send '1' bit: ~0.8?s high, ~0.45?s low
                *set_reg = pin_mask;                    // Set high
                __asm__ __volatile__(                   // ~0.8?s delay (38 NOPs)
                    "nop\n nop\n "
                    
                    ::: "memory");
                *clr_reg = pin_mask;                    // Set low
                __asm__ __volatile__(                   // ~0.45?s delay (22 NOPs)
                    "nop\n "
                    ::: "memory");
            } else {
                // Send '0' bit: ~0.4?s high, ~0.85?s low
                *set_reg = pin_mask;                    // Set high
                __asm__ __volatile__(                   // ~0.4?s delay (19 NOPs)
                    "nop\n nop\n"
                    ::: "memory");
                *clr_reg = pin_mask;                    // Set low
                __asm__ __volatile__(                   // ~0.85?s delay (41 NOPs)
                    "nop\n nop\n " ::: "memory");
            }
        }
    }
    
    // Reset signal: Hold low for 50?s
    *clr_reg = pin_mask;
    ws2812_delay_cycles(WS2812_RESET_CYCLES);
    
    // Re-enable interrupts
    __enable_irq();
    
    ws2812_transmission_complete = true;
}

/**
 * @brief Set color for a specific LED
 * @param index LED index (0-based)
 * @param red Red component (0-255)
 * @param green Green component (0-255)
 * @param blue Blue component (0-255)
 */
void ws2812_set_pixel(uint8_t index, uint8_t red, uint8_t green, uint8_t blue)
{
    if (index >= LED_COUNT) {
        return; // Invalid index
    }
    
    // WS2812 uses GRB format
    uint16_t offset = index * LED_BYTES_PER_PIXEL;
    led_buffer[offset + 0] = green;  // G
    led_buffer[offset + 1] = red;    // R
    led_buffer[offset + 2] = blue;   // B
}

/**
 * @brief Clear all LEDs (set to black)
 */
void ws2812_clear_all(void)
{
    memset(led_buffer, 0, LED_BUFFER_SIZE);
}

/**
 * @brief Update the LED strip with current buffer contents
 */
void ws2812_show(void)
{
    ws2812_transmission_complete = false;
    ws2812_send_data(led_buffer, LED_BUFFER_SIZE);
}


/* WS2812 TCC0 PWM Driver for SAM IoT WG Development Board
 * Uses TCC0 PWM at 800kHz for precise WS2812 timing
 * Compatible with MPLAB X IDE
 */
//
//#include "definitions.h"
//#include <stdio.h>
//#include <string.h>
//
///* ************************************************************************** */
///* Configuration                                                              */
///* ************************************************************************** */
//
//#define LED_COUNT 1
//#define LED_BYTES_PER_PIXEL 3 // GRB format for WS2812
//#define LED_BUFFER_SIZE (LED_COUNT * LED_BYTES_PER_PIXEL)
//
//// TCC0 PWM duty cycles for WS2812 timing
//// TCC0 Period = 49 (50 total counts: 0-49)
//// PWM frequency = 800kHz as configured in MCC
//
//#define WS2812_DUTY_0   16    // ~33% duty cycle for '0' bit (16/49 ? 0.33)
//#define WS2812_DUTY_1   33    // ~67% duty cycle for '1' bit (33/49 ? 0.67)
//
//// Reset timing - how many PWM cycles to stay low (>50?s)
//#define WS2812_RESET_CYCLES  40  // 40 cycles at 800kHz = 50?s
//
///* ************************************************************************** */
///* Global Variables                                                           */
///* ************************************************************************** */
//
//static uint8_t led_buffer[LED_BUFFER_SIZE];
//
//// Transmission state for interrupt-driven sending
//static volatile bool transmission_active = false;
//static volatile uint8_t *data_ptr = NULL;
//static volatile size_t data_length = 0;
//static volatile size_t byte_index = 0;
//static volatile int8_t bit_index = 7;
//static volatile uint16_t reset_counter = 0;
//
///* ************************************************************************** */
///* TCC0 PWM Functions                                                         */
///* ************************************************************************** */
//
///**
// * @brief Initialize WS2812 with TCC0 PWM
// * Call this after MCC configures TCC0
// */
//void ws2812_init(void)
//{
//    // Clear LED buffer
//    memset(led_buffer, 0, LED_BUFFER_SIZE);
//    
//    // Set initial PWM duty to 0 (pin low)
//    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 0);
//    
//    // Start TCC0 PWM
//    TCC0_PWMStart();
//}
//
///**
// * @brief Simple blocking transmission using TCC0 PWM
// * @param data Pointer to data buffer (GRB format)  
// * @param len Length of data in bytes
// */
//void ws2812_send_data_blocking(const uint8_t *data, size_t len)
//{
//    for (size_t i = 0; i < len; i++) {
//        uint8_t byte = data[i];
//        
//        for (int8_t bit = 7; bit >= 0; bit--) {
//            bool bit_value = (byte & (1 << bit)) != 0;
//            uint16_t duty = bit_value ? WS2812_DUTY_1 : WS2812_DUTY_0;
//            
//            // Set PWM duty cycle for this bit
//            TCC0_PWM24bitDutySet(TCC0_CHANNEL0, duty);
//            
//            // Wait for one PWM cycle (1.25?s at 800kHz)
//            // Simple delay - tune this if needed
//            for (volatile int d = 0; d < 60; d++);
//        }
//    }
//    
//    // Reset period - keep PWM at 0 for 50?s
//    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 0);
//    for (volatile int d = 0; d < 2400; d++); // ~50?s delay
//}
//
///**
// * @brief Check if transmission is complete (always true for blocking)
// * @return true 
// */
//bool ws2812_is_ready(void)
//{
//    return true; // Blocking mode is always ready
//}
//
///* ************************************************************************** */
///* Interface Functions                                                        */
///* ************************************************************************** */
//
///**
// * @brief Set color for a specific LED
// * @param index LED index (0-based)
// * @param red Red component (0-255)
// * @param green Green component (0-255)
// * @param blue Blue component (0-255)
// */
//void ws2812_set_pixel(uint8_t index, uint8_t red, uint8_t green, uint8_t blue)
//{
//    if (index >= LED_COUNT) {
//        return; // Invalid index
//    }
//    
//    // WS2812 uses GRB format
//    uint16_t offset = index * LED_BYTES_PER_PIXEL;
//    led_buffer[offset + 0] = green;  // G
//    led_buffer[offset + 1] = red;    // R
//    led_buffer[offset + 2] = blue;   // B
//}
//
///**
// * @brief Clear all LEDs (set to black)
// */
//void ws2812_clear_all(void)
//{
//    memset(led_buffer, 0, LED_BUFFER_SIZE);
//}
//
///**
// * @brief Update the LED strip with current buffer contents
// */
//void ws2812_show(void)
//{
//    // Use blocking transmission
//    ws2812_send_data_blocking(led_buffer, LED_BUFFER_SIZE);
//}
//
///* ************************************************************************** */
///* Configuration Helper Functions                                             */
///* ************************************************************************** */
//
///**
// * @brief Set custom duty cycles for fine-tuning
// * @param duty_0 Duty cycle for '0' bit (0-TOP value)
// * @param duty_1 Duty cycle for '1' bit (0-TOP value)
// */
//void ws2812_set_duty_cycles(uint16_t duty_0, uint16_t duty_1)
//{
//    // You can modify the global duty cycle values for tuning
//    // This would require making WS2812_DUTY_0 and WS2812_DUTY_1 non-const
//}
//
///**
// * @brief Test function - send all 1's for scope measurement
// */
//void ws2812_test_all_ones(void)
//{
//    uint8_t test_data[3] = {0xFF, 0xFF, 0xFF}; // All bits = 1
//    ws2812_send_data_blocking(test_data, 3);
//}
//
///**
// * @brief Test function - send alternating pattern  
// */
//void ws2812_test_pattern(void)
//{
//    uint8_t test_data[3] = {0xAA, 0x55, 0xF0}; // Mixed pattern
//    ws2812_send_data_blocking(test_data, 3);
//}

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
//
//#include <stddef.h>
//#include <stdbool.h>
//#include <stdlib.h>
//#include <string.h>
//#include "definitions.h"
//#include <stdio.h>
//#include <xc.h>
//#include "ws2812b.h"
////
////DMA_Descriptor_TypeLocal DMA_Descriptor_WB = {
////    (volatile uint16_t) 0,
////    (volatile uint16_t) 0,
////    (volatile uint32_t) 0,
////    (volatile uint32_t) 0,
////    (volatile uint32_t) 0
////} SECTION_DMAC_DESCRIPTOR;
////
////__attribute__((__aligned__(16)))
////DMA_Descriptor_TypeLocal DMA_Descriptor = {
////    (volatile uint16_t) 0,
////    (volatile uint16_t) 0,
////    (volatile uint32_t) 0,
////    (volatile uint32_t) 0,
////    (volatile uint32_t) 0
////} SECTION_DMAC_DESCRIPTOR;
////
////WS2812_TYPE ws2812;
////
////void ws2812_ConstructTable(void) {
////    uint16_t i, j;
////    
////    // Clear the reset padding area
////    memset(&ws2812.PWM[3 * WS2812_NUM * 8], 0, WS2812_RESET_PAD);
////    
////    printf("LED data before construction: ");
////    for (i = 0; i < 3; i++) {
////        printf("%d ", ws2812.color.array[i]);
////    }
////    printf("\n");
////    
////    // Convert each byte of color data to 8 PWM values
////    for (i = 0; i < WS2812_NUM * 3; i++) {
////        printf("Processing byte %d (value %d): ", i, ws2812.color.array[i]);
////        for (j = 0; j < 8; j++) {
////            if ((ws2812.color.array[i] & (0x80 >> j)) == 0) {
////                ws2812.PWM[(i * 8) + j] = WS2812_DC_ZERO;  // 16
////                printf("0");
////            } else {
////                ws2812.PWM[(i * 8) + j] = WS2812_DC_ONE;   // 32
////                printf("1");
////            }
////        }
////        printf(" -> PWM[%d-%d]\n", i*8, i*8+7);
////    }
////    
////    printf("PWM array after construction (first 24): ");
////    for (i = 0; i < 24; i++) {
////        printf("%d ", ws2812.PWM[i]);
////    }
////    printf("\n");
////}
////
////void initTimerDMA(void) {
////    DMAC_REGS->DMAC_CTRL &= ~DMAC_CTRL_DMAENABLE_Msk;  // Fix: ~ not !
////    DMAC_REGS->DMAC_CTRL &= ~DMAC_CTRL_CRCENABLE_Msk;  // Fix: ~ not !
////    
////    DMA_Descriptor.BTCTRL = (volatile uint16_t) DMAC_BTCTRL_STEPSIZE(0) | DMAC_BTCTRL_STEPSEL_SRC | DMAC_BTCTRL_DSTINC(0) | DMAC_BTCTRL_SRCINC(1) | DMAC_BTCTRL_BEATSIZE(0) | DMAC_BTCTRL_BLOCKACT(0) | DMAC_BTCTRL_EVOSEL(1) | DMAC_BTCTRL_VALID(1);
////    DMA_Descriptor.BTCNT = (volatile uint16_t) sizeof (ws2812.PWM) - 1;
////    DMA_Descriptor.SRCADDR = ((volatile uint32_t) & ws2812.PWM[1]) + DMA_Descriptor.BTCNT;
////    DMA_Descriptor.DSTADDR = (volatile uint32_t) & TCC0_REGS->TCC_CCB[0];
////    DMA_Descriptor.DESCADDR = (volatile uint32_t) 0;
////    DMAC_REGS->DMAC_BASEADDR = (volatile uint32_t) & DMA_Descriptor;
////    DMAC_REGS->DMAC_WRBADDR = (volatile uint32_t) & DMA_Descriptor_WB;
////    DMAC_REGS->DMAC_CHID = 2;  // Changed from 0 to 2
////    DMAC_REGS->DMAC_CTRL = DMAC_CTRL_LVLEN0_Msk;
////    DMAC_REGS->DMAC_CHCTRLB = DMAC_CHCTRLB_TRIGACT_BEAT | DMAC_CHCTRLB_TRIGSRC(0x20) | DMAC_CHCTRLB_LVL(0) | DMAC_CHCTRLB_CMD_RESUME;  // Changed to 0x20 for TC5
////    DMAC_REGS->DMAC_CHCTRLA |= DMAC_CHCTRLA_ENABLE_Msk;
////    DMAC_REGS->DMAC_CTRL |= DMAC_CTRL_DMAENABLE_Msk;
////    TCC0_REGS->TCC_CC[0] = 0;
////    TCC0_PWMStart();
////}
////
////void ws2812_Update(void) {
////    DMAC_REGS->DMAC_CHID = 2;  // Add this line
////    
////    if (((DMAC_REGS->DMAC_CHINTFLAG & DMAC_CHINTFLAG_TCMPL_Msk) != 0) && ws2812.update == 1) {
////        TCC0_PWMStop();
////        TCC0_PWM24bitCounterSet(0);
////        DMAC_REGS->DMAC_CHID = 2;  // Changed from 0 to 2
////        DMAC_REGS->DMAC_CTRL &= ~DMAC_CTRL_DMAENABLE_Msk;  // Fix: ~ not !
////        ws2812.update = 0;
////        ws2812_ConstructTable();
////        DMA_Descriptor.BTCTRL = (volatile uint16_t) DMAC_BTCTRL_STEPSIZE(0) | DMAC_BTCTRL_STEPSEL_SRC | DMAC_BTCTRL_DSTINC(0) | DMAC_BTCTRL_SRCINC(1) | DMAC_BTCTRL_BEATSIZE(0) | DMAC_BTCTRL_BLOCKACT(0) | DMAC_BTCTRL_EVOSEL(1) | DMAC_BTCTRL_VALID(1);
////        DMA_Descriptor.BTCNT = (volatile uint16_t) sizeof (ws2812.PWM) - 1;
////        DMA_Descriptor.SRCADDR = ((volatile uint32_t) & ws2812.PWM[1]) + DMA_Descriptor.BTCNT;
////        DMA_Descriptor.DSTADDR = (volatile uint32_t) & TCC0_REGS->TCC_CCB[0];
////        DMA_Descriptor.DESCADDR = (volatile uint32_t) 0;
////        DMAC_REGS->DMAC_BASEADDR = (volatile uint32_t) & DMA_Descriptor;
////        DMAC_REGS->DMAC_WRBADDR = (volatile uint32_t) & DMA_Descriptor_WB;
////        DMAC_REGS->DMAC_CTRL = DMAC_CTRL_LVLEN0_Msk;
////        DMAC_REGS->DMAC_CHCTRLB = DMAC_CHCTRLB_TRIGACT_BEAT | DMAC_CHCTRLB_TRIGSRC(0x20) | DMAC_CHCTRLB_LVL(0) | DMAC_CHCTRLB_CMD_RESUME;  // Changed to 0x20 for TC5
////        TCC0_REGS->TCC_CC[0] = 0;
////        while (TCC0_REGS->TCC_SYNCBUSY & (TCC_SYNCBUSY_CC0_Msk));
////        TCC0_REGS->TCC_CCB[0] = ws2812.PWM[0];
////        while (TCC0_REGS->TCC_SYNCBUSY & (TCC_SYNCBUSY_CCB0_Msk));
////        TCC0_PWMStart();
////        DMAC_REGS->DMAC_CHCTRLA |= DMAC_CHCTRLA_ENABLE_Msk;
////        DMAC_REGS->DMAC_CTRL |= DMAC_CTRL_DMAENABLE_Msk;
////    }
////}
//
//// WS2812 data for 1 LED (24 bits = 3 bytes in GRB format)
//static uint8_t ws2812_data[3];  // G, R, B
//static volatile bool transmission_active = false;
//
//// Initialize WS2812 with TCC0 only
//void ws2812_init_simple(void) {
//    // Clear data
//    memset(ws2812_data, 0, sizeof(ws2812_data));
//    
//    // TCC0 should already be configured by MCC for 800kHz PWM
//    // Just start it
//    TCC0_PWMStart();
//    
//    // Set initial duty cycle to 0 (idle state)
//    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 0);
//    
//    printf("WS2812 simple init complete\n");
//}
//
//// Set LED color (GRB format)
//void ws2812_set_color_simple(uint8_t red, uint8_t green, uint8_t blue) {
//    ws2812_data[0] = green;  // G first
//    ws2812_data[1] = red;    // R second  
//    ws2812_data[2] = blue;   // B third
//    
//    printf("Color set: G=%d R=%d B=%d\n", green, red, blue);
//}
//
//// Send one bit using TCC0 PWM
//void ws2812_send_bit(bool bit_value) {
//    if (bit_value) {
//        // Send '1': ~65% duty cycle (32 out of 49)
//        TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 32);
//    } else {
//        // Send '0': ~33% duty cycle (16 out of 49)  
//        TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 16);
//    }
//    
//    // Wait for one PWM period (1.25?s at 800kHz)
//    // At 48MHz: 1.25?s = 60 cycles
//    for (volatile int i = 0; i < 60; i++) {
//        __asm__ __volatile__("nop");
//    }
//}
//
//// Send one byte (8 bits, MSB first)
//void ws2812_send_byte(uint8_t byte) {
//    for (int bit = 7; bit >= 0; bit--) {
//        bool bit_value = (byte & (1 << bit)) != 0;
//        ws2812_send_bit(bit_value);
//    }
//}
//
//// Send reset pulse (>50?s low)
//void ws2812_send_reset(void) {
//    // Set PWM to 0% duty cycle
//    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 0);
//    
//    // Wait 60?s (plenty for reset)
//    // At 48MHz: 60?s = 2880 cycles
//    for (volatile int i = 0; i < 2880; i++) {
//        __asm__ __volatile__("nop");
//    }
//}
//
//// Send complete LED data
//void ws2812_show_simple(void) {
//    if (transmission_active) {
//        printf("Transmission in progress, skipping\n");
//        return;
//    }
//    
//    transmission_active = true;
//    
//    printf("Sending WS2812 data...\n");
//    
//    // Disable interrupts for precise timing
//    __disable_irq();
//    
//    // Send 3 bytes (24 bits) for 1 LED in GRB order
//    for (int byte = 0; byte < 3; byte++) {
//        ws2812_send_byte(ws2812_data[byte]);
//    }
//    
//    // Send reset pulse
//    ws2812_send_reset();
//    
//    // Re-enable interrupts
//    __enable_irq();
//    
//    transmission_active = false;
//    
//    printf("WS2812 transmission complete\n");
//}
//
//// Alternative version using TC5 for precise timing instead of NOP delays
//void ws2812_show_with_tc5_timing(void) {
//    if (transmission_active) {
//        return;
//    }
//    
//    transmission_active = true;
//    
//    printf("Sending WS2812 data with TC5 timing...\n");
//    
//    // Reset TC5 counter
//    TC5_Compare8bitCounterSet(0);
//    
//    __disable_irq();
//    
//    // Send 24 bits (3 bytes)
//    for (int byte = 0; byte < 3; byte++) {
//        for (int bit = 7; bit >= 0; bit--) {
//            bool bit_value = (ws2812_data[byte] & (1 << bit)) != 0;
//            
//            if (bit_value) {
//                TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 32);  // ~65% for '1'
//            } else {
//                TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 16);  // ~33% for '0'
//            }
//            
//            // Wait for TC5 to reach compare value (period timing)
//            uint8_t start_count = TC5_Compare8bitCounterGet();
//            while ((TC5_Compare8bitCounterGet() - start_count) < 50) {
//                // Wait for ~1.25?s (TC5 period)
//            }
//        }
//    }
//    
//    // Reset pulse
//    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, 0);
//    
//    // Wait 50?s using TC5 (40 periods of 1.25?s each = 50?s)
//    uint8_t start_count = TC5_Compare8bitCounterGet();
//    while ((TC5_Compare8bitCounterGet() - start_count) < 200) {
//        // Wait for reset period
//    }
//    
//    __enable_irq();
//    
//    transmission_active = false;
//    
//    printf("WS2812 transmission with TC5 timing complete\n");
//}
//
//// Test functions
//void ws2812_test_red(void) {
//    ws2812_set_color_simple(255, 0, 0);  // Red
//    ws2812_show_simple();
//}
//
//void ws2812_test_green(void) {
//    ws2812_set_color_simple(0, 255, 0);  // Green
//    ws2812_show_simple();
//}
//
//void ws2812_test_blue(void) {
//    ws2812_set_color_simple(0, 0, 255);  // Blue
//    ws2812_show_simple();
//}
//
//void ws2812_test_off(void) {
//    ws2812_set_color_simple(0, 0, 0);    // Off
//    ws2812_show_simple();
//}
//
//void ws2812_test_sequence(void) {
//    printf("Starting WS2812 test sequence...\n");
//    
//    ws2812_test_red();
//    sleep_us(1000000);    // 1 second
//    
//    ws2812_test_green();
//    sleep_us(1000000);    // 1 second
//    
//    ws2812_test_blue();
//    sleep_us(1000000);    // 1 second
//    
//    ws2812_test_off();
//    
//    printf("Test sequence complete\n");
//}