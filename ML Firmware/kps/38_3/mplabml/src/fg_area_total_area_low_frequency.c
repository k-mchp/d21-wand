
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

#define FLAG_DC_AC 0
#define FLAG_USE_SAMPLE_RATE 1
#define FLAG_ABS_BEFORE_SUM 0
#define FLAG_ABS_AFTER_SUM 1

int32_t fg_area_total_area_low_frequency(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{
#define FG_AREA_TOTAL_AREA_LOW_FREQUENCY_NUM_PARAMS 2
#define FG_AREA_TOTAL_AREA_LOW_FREQUENCY_SAMPLE_RATE_PARAM_IDX 0
#define FG_AREA_TOTAL_AREA_LOW_FREQUENCY_SMOOTHING_FACTOR_PARAM_IDX 1
	int32_t icol;
	FLOAT sample_rate;
	int32_t nWinSize;

#if SML_DEBUG
	if (!kb_model || kb_model->sg_length <= 0 || !cols_to_use || cols_to_use->size <= 0 || !params || params->size < FG_AREA_TOTAL_AREA_LOW_FREQUENCY_NUM_PARAMS || !pFV)
		return 0;
#endif

	sample_rate = params->data[FG_AREA_TOTAL_AREA_LOW_FREQUENCY_SAMPLE_RATE_PARAM_IDX];
	nWinSize = (int32_t)params->data[FG_AREA_TOTAL_AREA_LOW_FREQUENCY_SMOOTHING_FACTOR_PARAM_IDX];

	for (icol = 0; icol < cols_to_use->size; icol++)
	{
		MA_Symmetric(kb_model->pdata_buffer->data, kb_model->sg_index, kb_model->sg_length, nWinSize, cols_to_use->data[icol], sample_rate, FLAG_DC_AC, FLAG_USE_SAMPLE_RATE,
					 FLAG_ABS_BEFORE_SUM, FLAG_ABS_AFTER_SUM, total_area_low_frequency_name, &pFV[icol]);
	}

	return cols_to_use->size;
}
