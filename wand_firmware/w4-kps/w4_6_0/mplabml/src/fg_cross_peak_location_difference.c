
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
#include "kbutils.h"

int32_t fg_cross_column_peak_location_difference(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{
    int32_t argmax_1, argmax_2;

#if SML_DEBUG
    // Validate required inputs
    if (!kb_model || kb_model->sg_length <= 0 || !cols_to_use || cols_to_use->size != 2 || !pFV)
    {
        return 0;
    }
#endif

    argmax_1 = buffer_argmax(kb_model->pdata_buffer->data + cols_to_use->data[0], kb_model->sg_index, kb_model->sg_length);
    argmax_2 = buffer_argmax(kb_model->pdata_buffer->data + cols_to_use->data[1], kb_model->sg_index, kb_model->sg_length);

    *pFV++ = (FLOAT)(argmax_1 - argmax_2);

    return 1;
}
