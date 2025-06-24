
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

int32_t fg_stats_linear_regression(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{
    int32_t icol, i;
    float x, y, x_mean, y_mean, y_std, x_std, m, b, r_xy, std_err;
    ringb *rb;
    int32_t start_index;

#if SML_DEBUG
    if (!kb_model || !cols_to_use || cols_to_use->size <= 0 || params->size != 0 || kb_model->sg_length <= 0 || !pFV)
        return 0;
#endif

    for (icol = 0; icol < cols_to_use->size; icol++)
    {
        rb = kb_model->pdata_buffer->data + cols_to_use->data[icol];

        y_mean = buffer_mean(rb, kb_model->sg_index, 0, kb_model->sg_length);
        x_mean = (float)(kb_model->sg_length - 1) / 2;

        y_std = buffer_standard_deviation(rb, kb_model->sg_index, 0, kb_model->sg_length);
        x_std = 0;
        for (i = 0; i < kb_model->sg_length; i++)
        {
            x = (float)i - x_mean;
            x_std += x * x;
        }
        x_std = SQRT(x_std / kb_model->sg_length);

        r_xy = 0.0;

        start_index = kb_model->sg_index;
        for (i = 0; i < kb_model->sg_length; i++)
        {
            x = ((float)i - x_mean);
            y = ((float)MOD_READ_RINGBUF(rb, start_index++) - y_mean);
            r_xy += x * y;
        }

        if (y_std == 0.0)
        {
            *pFV++ = 0.0;
            *pFV++ = y_mean;
            *pFV++ = 0.0;
            *pFV++ = 0.0;
        }
        else
        {
            r_xy /= (y_std * x_std * kb_model->sg_length);

            m = r_xy * y_std / x_std;
            b = y_mean - m * x_mean;
            std_err = SQRT((1 - r_xy * r_xy) / (kb_model->sg_length - 2)) * y_std / x_std;

            *pFV++ = m;
            *pFV++ = b;
            *pFV++ = r_xy;
            *pFV++ = std_err;
        }
    }

    return cols_to_use->size * 4;
}