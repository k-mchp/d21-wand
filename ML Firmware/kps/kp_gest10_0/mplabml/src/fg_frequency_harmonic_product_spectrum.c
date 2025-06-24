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

#include "kbalgorithms.h"
#include "fftr_utils.h"

#define NUM_PARAMS 1
#define SAMPLE_RATE_PARAM_IDX 0

#define FG_HARMONIC_PRODUCT_SPECTRUM_NUM_PARAMS 1
#define FG_HARMONIC_PRODUCT_SPECTRUM_HARMONIC_COEFFICIENT_PARAM_IDX 0

static void calc_harmonic_product_spectrum_peak(int16_t *input_data, int32_t len, int32_t harmonic_coeff, FLOAT *pFV)
{
    struct compx_int16_t *data;
    int max_downsample_steps = NUM_FFTR_CMPX / harmonic_coeff;

    data = fftr_rm_as(input_data, len);

    for (int i = 0; i < NUM_FFTR_CMPX; i++)
    {
        input_data[i] = SQRT(data[i].real * data[i].real + data[i].imag * data[i].imag);
    }

    for (int i = 1; i < max_downsample_steps; i++)
    {

        pFV[i] = input_data[i];
        for (int j = 2; j < harmonic_coeff; j++)
        {
            pFV[i] *= input_data[i * j];
        }
    }
}

int32_t fg_frequency_harmonic_product_spectrum(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{

    int icol;
    int len;
    ringb *rb;

#if SML_DEBUG
    if (!kb_model || kb_model->sg_length <= 0 || !cols_to_use || cols_to_use->size <= 0 || !params || params->size != NUM_PARAMS || !pFV)
    {
        return 0;
    }
#endif

    int32_t harmonic_cofficients = (int32_t)params->data[FG_HARMONIC_PRODUCT_SPECTRUM_HARMONIC_COEFFICIENT_PARAM_IDX];

    for (icol = 0; icol < cols_to_use->size; icol++)
    {
        int i;
        int start_index = kb_model->sg_index;
        rb = kb_model->pdata_buffer->data + cols_to_use->data[icol];
        if (kb_model->sg_length > NUM_FFTR)
        {
            len = NUM_FFTR;
        }
        else
        {
            len = kb_model->sg_length;
        }

        for (i = 0; i < len; i++)
        {
            sortedData[i] = MOD_READ_RINGBUF(rb, start_index++);
        }

        calc_harmonic_product_spectrum_peak(sortedData, kb_model->sg_length, harmonic_cofficients, pFV + icol * 2);
    }

    return NUM_FFTR_CMPX / harmonic_cofficients * 2;
}
