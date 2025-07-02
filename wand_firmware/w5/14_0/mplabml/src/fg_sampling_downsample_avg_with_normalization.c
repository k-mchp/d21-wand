
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

/***
 * Divide samples into num segments, compute the mean of each segment.
 *
 * Inputs:
 *         num_rows - total number of frames.
 *         cols_to_use - array of offsets into the sensor frame of data to be downsampled.
 *         num_cols - size of cols array.
 *		  params - array of function parameters.
 *		  num_params - count of function parameters.
 *         pFV -        Pointer to the next location in feature vector to be filled.
 *
 * Outputs: pFV[0]-pFV[num_cols] - downsampled feature vectors
 *
 * Returns: num_cols if successful.
 */

int32_t fg_sampling_downsample_avg_with_normalization(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{
#define FG_SAMPLING_DOWNSAMPLE_AVG_WITH_NORMALIZATION_AVG_NUM_PARAMS 1
#define FG_SAMPLING_DOWNSAMPLE_AVG_WITH_NORMALIZATION_NEW_LENGTH_PARAM_IDX 0

#if SML_DEBUG
	if (!kb_model ||
		kb_model->sg_length <= 0 ||
		!cols_to_use ||
		cols_to_use->size <= 0 ||
		!params ||
		!pFV ||
		params->size != FG_SAMPLING_DOWNSAMPLE_AVG_WITH_NORMALIZATION_AVG_NUM_PARAMS)
	{
		return 0;
	}
#endif

	int32_t iseg;
	ringb *rb;
	int32_t base_index = kb_model->sg_index;
	int32_t numsegs = (int32_t)params->data[FG_SAMPLING_DOWNSAMPLE_AVG_WITH_NORMALIZATION_NEW_LENGTH_PARAM_IDX];
	int32_t nspseg = kb_model->sg_length / numsegs;

	rb = kb_model->pdata_buffer->data + cols_to_use->data[0];

	for (iseg = 0; iseg < numsegs; iseg++)
	{
		sortedData[iseg] = (int16_t)i_mean(rb, base_index + iseg * nspseg, nspseg);
	}

	int32_t min = KB_SHORT_INT_MAX;
	int32_t max = KB_SHORT_INT_MIN;
	for (iseg = 0; iseg < numsegs; iseg++)
	{
		if (sortedData[iseg] < min)
		{
			min = sortedData[iseg];
		}
		else if (sortedData[iseg] > max)
		{
			max = sortedData[iseg];
		}
	}

	float delta = (float)(max - min);
	float scale_factor = 0.0f;
	if (delta != 0.0f)
	{
		scale_factor = 255.0f / delta;
	}

	for (iseg = 0; iseg < numsegs; iseg++)
	{
		*pFV++ = (float)(sortedData[iseg] - min) * scale_factor;
	}

	return numsegs;
}
