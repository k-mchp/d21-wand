/*******************************************************************************
  Timer/Counter(TC4) PLIB

  Company
    Microchip Technology Inc.

  File Name
    plib_tc4.c

  Summary
    TC4 PLIB Implementation File.

  Description
    This file defines the interface to the TC peripheral library. This
    library provides access to and control of the associated peripheral
    instance.

  Remarks:
    None.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/* This section lists the other files that are included in this file.
*/

#include "plib_tc4.h"
#include "interrupts.h"


// *****************************************************************************
// *****************************************************************************
// Section: Global Data
// *****************************************************************************
// *****************************************************************************

volatile static TC_TIMER_CALLBACK_OBJ TC4_CallbackObject;

// *****************************************************************************
// *****************************************************************************
// Section: TC4 Implementation
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Initialize the TC module in Timer mode */
void TC4_TimerInitialize( void )
{
    /* Reset TC */
    TC4_REGS->COUNT16.TC_CTRLA = TC_CTRLA_SWRST_Msk;

    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }

    /* Configure counter mode & prescaler */
    TC4_REGS->COUNT16.TC_CTRLA = TC_CTRLA_MODE_COUNT16 | TC_CTRLA_PRESCALER_DIV1 | TC_CTRLA_WAVEGEN_MPWM ;

    /* Configure timer period */
    TC4_REGS->COUNT16.TC_CC[0U] = 15999U;

    /* Clear all interrupt flags */
    TC4_REGS->COUNT16.TC_INTFLAG = TC_INTFLAG_Msk;

    TC4_CallbackObject.callback = NULL;
    /* Enable interrupt*/
    TC4_REGS->COUNT16.TC_INTENSET = TC_INTENSET_MC1_Msk;


    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
}

/* Enable the TC counter */
void TC4_TimerStart( void )
{
    TC4_REGS->COUNT16.TC_CTRLA |= TC_CTRLA_ENABLE_Msk;
    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
}

/* Disable the TC counter */
void TC4_TimerStop( void )
{
    TC4_REGS->COUNT16.TC_CTRLA = ((TC4_REGS->COUNT16.TC_CTRLA) &(uint16_t)(~TC_CTRLA_ENABLE_Msk));
    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
}

uint32_t TC4_TimerFrequencyGet( void )
{
    return (uint32_t)(16000000UL);
}

void TC4_TimerCommandSet(TC_COMMAND command)
{
    TC4_REGS->COUNT16.TC_CTRLBSET = (uint8_t)command << TC_CTRLBSET_CMD_Pos;
    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
}

/* Get the current timer counter value */
uint16_t TC4_Timer16bitCounterGet( void )
{
    /* Write command to force COUNT register read synchronization */
    TC4_REGS->COUNT16.TC_READREQ = TC_READREQ_RREQ_Msk | (uint16_t)TC_COUNT16_COUNT_REG_OFST;

    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }

    /* Read current count value */
    return (uint16_t)TC4_REGS->COUNT16.TC_COUNT;
}

/* Configure timer counter value */
void TC4_Timer16bitCounterSet( uint16_t count )
{
    TC4_REGS->COUNT16.TC_COUNT = count;

    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
}

/* Configure timer period */
void TC4_Timer16bitPeriodSet( uint16_t period )
{
    TC4_REGS->COUNT16.TC_CC[0] = period;
    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
}

/* Read the timer period value */
uint16_t TC4_Timer16bitPeriodGet( void )
{
    /* Write command to force CC register read synchronization */
    TC4_REGS->COUNT16.TC_READREQ = TC_READREQ_RREQ_Msk | (uint16_t)TC_COUNT16_CC_REG_OFST;

    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
    return (uint16_t)TC4_REGS->COUNT16.TC_CC[0];
}

void TC4_Timer16bitCompareSet( uint16_t compare )
{
    TC4_REGS->COUNT16.TC_CC[1] = compare;
    while((TC4_REGS->COUNT16.TC_STATUS & TC_STATUS_SYNCBUSY_Msk)!= 0U)
    {
        /* Wait for Write Synchronization */
    }
}


/* Register callback function */
void TC4_TimerCallbackRegister( TC_TIMER_CALLBACK callback, uintptr_t context )
{
    TC4_CallbackObject.callback = callback;

    TC4_CallbackObject.context = context;
}

/* Timer Interrupt handler */
void __attribute__((used)) TC4_TimerInterruptHandler( void )
{
    TC_TIMER_STATUS status;
    status = (TC_TIMER_STATUS) (TC4_REGS->COUNT16.TC_INTFLAG);
    /* Clear interrupt flags */
    TC4_REGS->COUNT16.TC_INTFLAG = TC_INTFLAG_Msk;
    if(TC4_CallbackObject.callback != NULL)
    {
        uintptr_t context = TC4_CallbackObject.context;
        TC4_CallbackObject.callback(status, context);
    }
}

