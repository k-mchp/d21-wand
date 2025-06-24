
/*******************************************************************************
* Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries.
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

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "fftr_utils.h"
#include "fftr.h"
#include "kbutils.h"

#ifdef UTEST
// comment out the next line before committing:
// #define DBG_UTEST
#endif
#ifdef DBG_UTEST
#include <stdio.h>
#endif

// local params:
static uint8_t autoScale = false;
static uint8_t removeMean = false;

#ifdef DBG_UTEST
// local functions for debugging:
static void dump_data_float(FLOAT *pData, int32_t len)
{
    int32_t idx;
    int32_t cnt = 0;

    for (idx = 0; idx < len; idx++)
    {
        printf("%.6f, ", *pData++);
        cnt++;
        if ((cnt % 8) == 0)
        {
            printf("\n");
        }
    }
    if (len % 8)
    {
        printf("\n");
    }
}

static void dump_data_int(int16_t *pData, int32_t len)
{
    int32_t idx;
    int32_t cnt = 0;

    for (idx = 0; idx < len; idx++)
    {
        printf("%5d, ", *pData++);
        cnt++;
        if ((cnt % 8) == 0)
        {
            printf("\n");
        }
    }
    if (len % 8)
    {
        printf("\n");
    }
}

static void dump_FFTR(int16_t *pData)
{
    int32_t idx;

    for (idx = 0; idx < NUM_FFTR; idx += 2)
    {
        printf("%5d, %5d\n", pData[idx], pData[idx + 1]);
    }
}
#endif

// The basic float-based wrapper, applies Hanning window to data, converts FLOAT inputs to int16, calls FFTR_512(),
// and converts results back to FLOAT.
struct compx *fftr_fl(FLOAT *input_data, int32_t len)
{
    int16_t *pInt16 = (int16_t *)input_data;
    FLOAT *pFloat = input_data;
    int32_t rShifts;
    int32_t idx;

    // check inputs:
    if ((!input_data) || (len < 8))
    {
        return NULL;
    }

    if (len % 2)
    {
        len -= 1;
    }

    if (len > NUM_FFTR)
    {
        len = NUM_FFTR;
    }

#ifdef DBG_UTEST
    printf("\nInput Data:\n");
    dump_data_float(input_data, len);
#endif

    // first, remove the mean:
    if (removeMean)
    {
        remove_mean_data_float(input_data, len);
        removeMean = false;
#ifdef DBG_UTEST
        printf("\nDemeaned data:\n");
        dump_data_float(input_data, len);
#endif
    }

    // apply Hanning window:
    apply_hanning_float(input_data, len);
#ifdef DBG_UTEST
    printf("\nHanning applied to Data:\n");
    dump_data_float(input_data, len);
#endif

    // handle auto-scaling
    if (autoScale)
    {
        autoscale_data_float(input_data, len);
        autoScale = false;
#ifdef DBG_UTEST
        printf("\nAutoscaled data:\n");
        dump_data_float(input_data, len);
#endif
    }

    // convert floats to 16-bit ints:
    for (idx = 0; idx < len; idx++)
    {
        pInt16[idx] = (int16_t)(pFloat[idx]);
    }

    // if len < expected, zero pad at the end:
    if (len < NUM_FFTR)
    {
        for (idx = len; idx < NUM_FFTR; idx++)
        {
            pInt16[idx] = 0;
        }
    }

    // get FFT (results returned in given buffer):
    rShifts = FFTR_512(pInt16);
#ifdef DBG_UTEST
    printf("\nfftr results (rShifts = %d):\n", rShifts);
    dump_FFTR(pInt16);
#else
    // ignore rShifts:
    (void)rShifts;
#endif

    // convert 16-bit ints to floats, working backwards because the ints are up front:
    for (idx = NUM_FFTR - 1; idx >= 0; idx--)
    {
        pFloat[idx] = (FLOAT)pInt16[idx];
    }

    // done!
    return ((struct compx *)input_data);
}

// This applies Hanning and then auto-scales:
struct compx *fftr_fl_as(FLOAT *input_data, int32_t len)
{
    struct compx *pRet;

    autoScale = true;
    removeMean = false;
    pRet = fftr_fl(input_data, len);
    return pRet;
}

// This removes the mean, applies Hanning, and then auto-scales:
struct compx *fftr_fl_rm_as(FLOAT *input_data, int32_t len)
{
    struct compx *pRet;

    autoScale = true;
    removeMean = true;
    pRet = fftr_fl(input_data, len);
    return pRet;
}

// The basic int16-based wrapper, applies Hanning window and calls FFTR_512():
struct compx_int16_t *fftr(int16_t *input_data, int32_t len)
{
    int32_t rShifts;
    int32_t idx;

    // check inputs:
    if ((!input_data) || (len < 8))
    {
        return NULL;
    }

    if (len > NUM_FFTR)
    {
        len = NUM_FFTR;
    }

#ifdef DBG_UTEST
    printf("\nInput Data:\n");
    dump_data_int(input_data, len);
#endif

    // first, remove the mean
    if (removeMean)
    {
        remove_mean_data_int(input_data, len);
        removeMean = false;
#ifdef DBG_UTEST
        printf("\nDemeaned data:\n");
        dump_data_int(input_data, len);
#endif
    }

    // apply Hanning window
    apply_hanning_int(input_data, len);
#ifdef DBG_UTEST
    printf("\nHanning applied to Data:\n");
    dump_data_int(input_data, len);
#endif

    // handle auto-scaling
    if (autoScale)
    {
        autoscale_data_int(input_data, NUM_FFTR);
        autoScale = false;
#ifdef DBG_UTEST
        printf("\nAutoscaled data:\n");
        dump_data_int(input_data, len);
#endif
    }

    // if len < expected, zero pad at the end:
    if (len < NUM_FFTR)
    {
        for (idx = len; idx < NUM_FFTR; idx++)
        {
            input_data[idx] = 0;
        }
    }

    // get FFT (results returned in given buffer):
    rShifts = FFTR_512(input_data);
#ifdef DBG_UTEST
    printf("\nfftr results (rShifts = %d):\n", rShifts);
    dump_FFTR(input_data);
#else
    // ignore rShifts:
    (void)rShifts;
#endif

    // done!
    return ((struct compx_int16_t *)input_data);
}

// This applies Hanning and then auto-scales:
struct compx_int16_t *fftr_as(int16_t *input_data, int32_t len)
{
    struct compx_int16_t *pRet;

    autoScale = true;
    removeMean = false;
    pRet = fftr(input_data, len);
    return pRet;
}

// This removes the mean, applies Hanning, and then auto-scales:
struct compx_int16_t *fftr_rm_as(int16_t *input_data, int32_t len)
{
    struct compx_int16_t *pRet;

    autoScale = true;
    removeMean = true;
    pRet = fftr(input_data, len);
    return pRet;
}
