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


#include "definitions.h"
#include <stdio.h>
#include <string.h>
#include <xc.h>
//#include "ws2812.h"

/* ************************************************************************** */
/* WS2812/NeoPixel Configuration                                             */
/* ************************************************************************** */

#define LED_COUNT 1
#define LED_BYTES_PER_PIXEL 3 // GRB format for WS2812
#define LED_BUFFER_SIZE (LED_COUNT * LED_BYTES_PER_PIXEL)

// Pin configuration for SAM IoT Curiosity Board
// Using PA08 - pin already configured as output in MCC
#define WS2812_DATA_PIN    PORT_PIN_PA08

// Timing constants for SAMD21 at 48MHz (20.83ns per cycle)
// WS2812 specification: 800kHz (1.25?s per bit)
// Applying same correction factor to bit timing
#define WS2812_T0H_CYCLES  6    // 19 * 0.329 ? 6 cycles (0.4?s with overhead)
#define WS2812_T0L_CYCLES  13   // 41 * 0.329 ? 13 cycles (0.85?s with overhead)
#define WS2812_T1H_CYCLES  12   // 38 * 0.329 ? 12 cycles (0.8?s with overhead)  
#define WS2812_T1L_CYCLES  7    // 22 * 0.329 ? 7 cycles (0.45?s with overhead)
#define WS2812_RESET_CYCLES 790 // 50?s reset time (measured value)

void __attribute__((optimize("O2"))) ws2812_send_data(const uint8_t *data, size_t len) ;

/* ************************************************************************** */
/* Global Variables                                                           */
/* ************************************************************************** */

static uint8_t led_buffer[LED_BUFFER_SIZE];
volatile bool ws2812_transmission_complete = false;

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
/* @brief Send data to WS2812 LEDs using timing defines*/

void __attribute__((optimize("O2"))) ws2812_send_data(const uint8_t *data, size_t len)
{   
    volatile uint32_t *set_reg = &PORT_IOBUS_REGS->GROUP[0].PORT_OUTSET;
    volatile uint32_t *clr_reg = &PORT_IOBUS_REGS->GROUP[0].PORT_OUTCLR;
    uint32_t pin_mask = (1 << 8); // PA08
    
    __disable_irq();
    
    for (size_t i = 0; i < len; i++) {
        uint8_t byte = data[i];
    
        for (int8_t bit = 7; bit >= 0; bit--) {
            if (byte & (1 << bit)) {
                // Send '1' bit using T1H and T1L defines
                *set_reg = pin_mask;
                _nop();_nop();_nop();_nop();_nop();_nop();_nop();_nop(); //8 nop's
                _nop();_nop();_nop();_nop();_nop();_nop();_nop();_nop(); //8 nop's
               //_nop();_nop();_nop();_nop();_nop();//_nop();_nop();_nop(); //8 nop's
                _nop();_nop();_nop();_nop();_nop();_nop();_nop();_nop(); //8 nop's
//                _nop();_nop();
//                __asm__ __volatile__(T1H_DELAY_ASM ::: "memory");
                *clr_reg= pin_mask;
//                __asm__ __volatile__(T1L_DELAY_ASM ::: "memory");
                //_nop();_nop();_nop();_nop();_nop();//_nop();_nop();_nop(); //8 nop's
                 //_nop();_nop();_nop();_nop();_nop();_nop();_nop();_nop(); //8 nop's
                //_nop();_nop();_nop();_nop();_nop();//_nop();_nop();_nop(); //8 nop's
//                _nop();_nop();_nop();_nop();_nop(); //5 nop's
                
            } else {
                // Send '0' bit using T0H and T0L defines
                *set_reg = pin_mask;
                //__asm__ __volatile__(T0H_DELAY_ASM ::: "memory");
                _nop();_nop();_nop();_nop();_nop();_nop();_nop();_nop(); //8 nop's
                _nop();_nop();_nop();_nop();//_nop();_nop();_nop();_nop();
//                _nop();
                
                *clr_reg = pin_mask;
                _nop();_nop();
            }
            if ( bit >0)
            {
                _nop();_nop();_nop();_nop();_nop();_nop();_nop();_nop(); //8 nop's
                _nop();_nop();_nop();_nop();_nop(); //8 nop's
            }
        }
    }
    
    // Reset signal using your existing delay function
    *clr_reg = pin_mask;
    ws2812_delay_cycles(WS2812_RESET_CYCLES);
    
    
    ws2812_transmission_complete = true;
    __enable_irq();
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
    ws2812_send_data(led_buffer, LED_BUFFER_SIZE) ;
}
void ws2812_test_timing(void)
{
    uint8_t test_data = 0xAA; // 10101010 pattern for scope analysis
    ws2812_send_data(&test_data, 1);
}