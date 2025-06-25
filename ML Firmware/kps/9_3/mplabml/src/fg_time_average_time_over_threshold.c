
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

int32_t fg_time_avg_time_over_threshold(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{
#define FG_TIME_AVG_TIME_OVER_THRESHOLD_NUM_PARAMS 1
#define FG_TIME_AVG_TIME_OVER_THRESHOLD_THRESHOLD_PARAM_IDX 0

#if SML_DEBUG
	if (!kb_model || kb_model->sg_length <= 0 || !cols_to_use || cols_to_use->size <= 0 || !pFV)
		return 0;
#endif

	int32_t icol;
	int32_t base_index = kb_model->sg_index;
	int32_t threshold = (int32_t)params->data[FG_TIME_AVG_TIME_OVER_THRESHOLD_THRESHOLD_PARAM_IDX];
	ringb *rb;
	int16_t val;
	int32_t start_index;

	for (icol = 0; icol < cols_to_use->size; icol++)
	{
		int32_t irow;
		bool last = false;
		int32_t time_last_cross = 1;
		int32_t avg_cross_time_sum = 0;
		int32_t cross = 0;

		rb = kb_model->pdata_buffer->data + cols_to_use->data[icol];
		start_index = base_index & rb->mask;
		val = rb->buff[start_index++];

		if (val >= threshold)
		{
			last = true;
		}

		for (irow = 1; irow < kb_model->sg_length; irow++)
		{
			val = MOD_READ_RINGBUF(rb, start_index++);
			if (last)
			{
				if (val < threshold)
				{
					avg_cross_time_sum += time_last_cross;
					cross++;
					time_last_cross = 0;
					last = false;
				}
			}
			else
			{
				if (val >= threshold)
				{
					time_last_cross = 0;
					last = true;
				}
			}
			time_last_cross++;
		}

		if (cross > 0)
		{
			pFV[icol] = (FLOAT)(avg_cross_time_sum / cross);
		}
		else
		{
			pFV[icol] = 0.f;
		}
	}

	return cols_to_use->size;
}
