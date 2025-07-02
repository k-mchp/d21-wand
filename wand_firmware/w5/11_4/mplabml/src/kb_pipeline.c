
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

#include "kb_pipeline.h"

#include "pme.h"

#include "sml_profile_utils.h"
static uint32_t profile_cycle_count = 0;
static float profile_total_time = 0.0f;
static float profile_avg_iter_time = 0.0f;

#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wunused-variable"

// Operations
#define FLT_MAX (FLOAT)0x7f7fffff
#define FLT_MIN -(FLT_MAX)
// FILL_MAX_NUMBER_COLUMNS
// FILL_MAX_NUMBER_PARAMS
#ifndef NUMBER_OF_COLUMNS
#define NUMBER_OF_COLUMNS 10
#endif

#ifndef MAX_NUMBER_PARAMS
#define MAX_NUMBER_PARAMS 10
#endif

int16_t columns[NUMBER_OF_COLUMNS];
static float params[MAX_NUMBER_PARAMS];

static float_data_t input_params = {
    .data = params,
    .size = MAX_NUMBER_PARAMS};

static int16_data_t input_columns = {
    .data = columns,
    .size = NUMBER_OF_COLUMNS};


int32_t data_streaming_0(void* model, int16_t *pSample)
{
	int32_t FrameIdx = 0;
	kb_model_t * kb_model = (kb_model_t*)model;

	input_columns.data[0] = ACCELEROMETERX_S_11_RANK_4;
	input_columns.data[1] = ACCELEROMETERY_S_11_RANK_4;
	input_columns.data[2] = ACCELEROMETERZ_S_11_RANK_4;
	input_columns.data[3] = GYROSCOPEX_S_11_RANK_4;
	input_columns.data[4] = GYROSCOPEY_S_11_RANK_4;
	input_columns.data[5] = GYROSCOPEZ_S_11_RANK_4;
	input_columns.data[6] = TRIGGER_S_11_RANK_4;
	input_columns.size = 7;
	FrameIdx += tr_sensor_sensors(pSample, &input_columns, &kb_model->input_data[FrameIdx]);
	input_columns.data[0] = 1;
	input_columns.data[1] = 1;
	input_columns.data[2] = 1;
	input_columns.data[3] = 1;
	input_columns.data[4] = 1;
	input_columns.data[5] = 1;
	input_columns.data[6] = 1;
	if (streaming_downsample_by_averaging(kb_model->psdata_buffer->data, kb_model->input_data, &input_columns ,1 )==-1) return 0;	
saveSensorData(kb_model->pdata_buffer->data, kb_model->input_data, kb_model->pdata_buffer->size);
	return 1;
}



int32_t data_segmentation_0(void* model, int32_t model_index)
{
	int32_t FrameIdx = 0;
	kb_model_t * kb_model = (kb_model_t*)model+model_index;
	int32_t new_samples = rb_num_items(kb_model->pdata_buffer->data, kb_model->last_read_idx);
	int32_t i;
	for (i=0; i<new_samples; i++){
			kb_model->last_read_idx += 1;
		input_columns.size = 0;

	if(sg_windowing(kb_model, &input_columns, kb_model->psegParams)){
			return 1;
		}
	}
	// Colect more samples
	return -1;
}



int32_t feature_gen_0(void * model, int32_t *nfeats)
{
	int32_t column = 0;
	int32_t num_params = 1;
	kb_model_t * kb_model = (kb_model_t*)model;
	int32_t nframes = kb_model->sg_length;
	int32_t CompIdx = (kb_model->feature_bank_index) * (kb_model->pfeature_bank->bank_size);
	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_pct025(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_absolute_area(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_absolute_area_high_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_absolute_area_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERY_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_power_spectrum_density(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_power_spectrum_density(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 12;	
input_params.size = 1;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_sampling_downsample(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 12;	
input_params.size = 1;	
input_columns.data[0] = TRIGGER_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_sampling_downsample(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_amplitude_min_max_sum(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_amplitude_peak_to_peak(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 5;	
input_params.size = 1;	
input_columns.data[0] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_amplitude_global_p2p_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_iqr(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_minimum(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_minimum(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_positive_zero_crossings(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = ACCELEROMETERY_D_11_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_total_area_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_11_RANK_4;	
input_columns.data[1] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_11_RANK_4;	
input_columns.data[1] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_11_RANK_4;	
input_columns.data[1] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_11_RANK_4;	
input_columns.data[1] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_11_RANK_4;	
input_columns.data[1] = GYROSCOPEX_D_11_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.data[1] = GYROSCOPEY_D_11_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_11_RANK_4;	
input_columns.data[1] = GYROSCOPEZ_D_11_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
return 1;
}



int32_t feature_transform_0(void * model)
{
	kb_model_t * kb_model = (kb_model_t*)model;
	
	static struct minmax aminmax[24] = {
	
		{0, -2191.0f, 230.0f},	
		{1, 45.56999969482422f, 2765.800048828125f},	
		{2, 13.004546165466309f, 364.7117919921875f},	
		{3, 27.258180618286133f, 2825.210693359375f},	
		{4, 318829696.0f, 39965380608.0f},	
		{5, 15155100.0f, 124408791040.0f},	
		{12, -7326.5f, 4850.39990234375f},	
		{13, -7294.10009765625f, 6167.39990234375f},	
		{28, 0.0f, 1.0f},	
		{30, -5431.0f, 4611.0f},	
		{31, 155.0f, 11262.0f},	
		{32, 53.181819915771484f, 12507.0f},	
		{33, 69.0f, 4127.0f},	
		{34, -8269.0f, -36.0f},	
		{35, -6884.0f, -56.0f},	
		{36, 0.0f, 13.0f},	
		{37, 6.120909214019775f, 1930.2835693359375f},	
		{38, -7954.0f, 182.0f},	
		{39, -8040.0f, -116.0f},	
		{40, -6030.0f, 474.0f},	
		{41, -7843.0f, 808.0f},	
		{42, -5158.0f, 1298.0f},	
		{43, -3041.0f, 5804.0f},	
		{44, -6938.0f, 5549.0f},	
	};
	
	int32_t start = (kb_model->feature_bank_index+1) * (kb_model->pfeature_bank->bank_size);
	
	int32_t total_features = (kb_model->pfeature_bank->bank_size) * (kb_model->pfeature_bank->num_banks);
	
	min_max_scale(kb_model->pfeature_bank->pFeatures, kb_model->pfeature_vector, kb_model->pfeature_vector->size, start, total_features, 0, 255, aminmax);
	return 1;

}



int32_t recognize_vector_0(void * model)
{
	int32_t ret;
	kb_model_t * kb_model = (kb_model_t*)model;
	ret = pme_simple_submit_pattern(kb_model->classifier_id, kb_model->pfeature_vector, kb_model->pmodel_results);
	return ret;

}

