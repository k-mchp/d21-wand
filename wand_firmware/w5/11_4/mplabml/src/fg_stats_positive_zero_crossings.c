
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

int32_t fg_stats_positive_zero_crossings(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{
#define FG_STATS_POSITIVE_ZERO_CROSSINGS_NUM_PARAMS 1
#define FG_STATS_POSITIVE_ZERO_CROSSINGS_THRESHOLD_PARAM_IDX 0
#if SML_DEBUG
    if (!kb_model || !cols_to_use || cols_to_use->size <= 0 || params->size != FG_STATS_POSITIVE_ZERO_CROSSINGS_NUM_PARAMS || kb_model->sg_length <= 0 || !pFV)
    {
        return 0;
    }
#endif // SML_DEBUG

    int32_t icol;
    int32_t threshold = params->data[FG_STATS_POSITIVE_ZERO_CROSSINGS_THRESHOLD_PARAM_IDX];
    int32_t sum;
    ringb *rb;

    for (icol = 0; icol < cols_to_use->size; icol++)
    {
        sum = 0;
        rb = kb_model->pdata_buffer->data + cols_to_use->data[icol];

        copy_segment_to_buff(rb, sortedData, kb_model->sg_index, kb_model->sg_length);

        for (int i = 0; i < kb_model->sg_length; i++)
        {
            sum += sortedData[i];
        }

        float num_crossings = (float)calculate_positive_crossing_rate_xor_threshold(sortedData, kb_model->sg_length, sum / kb_model->sg_length + threshold);

        if (threshold != 0)
        {
            num_crossings += (float)calculate_positive_crossing_rate_xor_threshold(sortedData, kb_model->sg_length, sum / kb_model->sg_length - threshold);
        }

        *pFV++ = num_crossings;
    }

    return cols_to_use->size;
}
