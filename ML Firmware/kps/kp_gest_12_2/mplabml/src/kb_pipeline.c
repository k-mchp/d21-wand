
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

	input_columns.data[0] = GYROSCOPEX_S_GEST_12_RANK_2;
	input_columns.data[1] = GYROSCOPEY_S_GEST_12_RANK_2;
	input_columns.data[2] = GYROSCOPEZ_S_GEST_12_RANK_2;
	input_columns.data[3] = ACCELEROMETERX_S_GEST_12_RANK_2;
	input_columns.data[4] = ACCELEROMETERY_S_GEST_12_RANK_2;
	input_columns.data[5] = ACCELEROMETERZ_S_GEST_12_RANK_2;
	input_columns.size = 6;
	FrameIdx += tr_sensor_sensors(pSample, &input_columns, &kb_model->input_data[FrameIdx]);
	input_columns.data[0] = GYROSCOPEX_S_GEST_12_RANK_2;
	input_columns.data[1] = GYROSCOPEY_S_GEST_12_RANK_2;
	input_columns.data[2] = GYROSCOPEZ_S_GEST_12_RANK_2;
	input_columns.size=3;
	FrameIdx += tr_sensor_magnitude(pSample, &input_columns, &kb_model->input_data[FrameIdx]);	
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
input_columns.data[0] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_pct025(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_pct025(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_pct075(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_pct075(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_area_absolute_area_high_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_area_absolute_area_high_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_area_power_spectrum_density(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_area_power_spectrum_density(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_abs_mean(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_amplitude_min_max_sum(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_amplitude_peak_to_peak(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_amplitude_peak_to_peak(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 5;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_amplitude_global_p2p_high_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_iqr(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_kurtosis(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_linear_regression(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_linear_regression(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_linear_regression(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.data[1] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[2] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.data[3] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.data[4] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.data[5] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=6;	
*nfeats = fg_cross_column_min_column(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_minimum(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_skewness(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_stdev(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_area_total_area(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_area_total_area_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[1] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_peak_location_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_peak_location_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_peak_location_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.data[1] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[1] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_variance(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_variance(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_12_RANK_2;	
input_columns.size=1;	
*nfeats = fg_stats_variance(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
return 1;
}



int32_t feature_transform_0(void * model)
{
	kb_model_t * kb_model = (kb_model_t*)model;
	
	static struct minmax aminmax[46] = {
	
		{0, -2515.0f, 223.0f},	
		{1, -2220.0f, 84.0f},	
		{2, -15.0f, 1541.0f},	
		{3, -1889.0f, 1257.0f},	
		{4, 8.284544944763184f, 795.2581787109375f},	
		{5, 9.010000228881836f, 286.6945495605469f},	
		{6, 2399197952.0f, 118030966784.0f},	
		{7, 43669400.0f, 55730393088.0f},	
		{8, 267.54400634765625f, 2038.592041015625f},	
		{9, -5777.0f, 6371.0f},	
		{10, 65.0f, 11072.0f},	
		{11, 43.0f, 8975.0f},	
		{12, 32.090911865234375f, 8527.544921875f},	
		{13, 11.0f, 2495.0f},	
		{14, -1.184910774230957f, 13.48299789428711f},	
		{16, -778.88720703125f, 2470.685302734375f},	
		{20, -2318.910400390625f, -257.74853515625f},	
		{23, -18.238117218017578f, 13.756712913513184f},	
		{27, 1.0f, 6.0f},	
		{28, -3064.0f, -78.0f},	
		{29, -3.25988507270813f, 3.0207440853118896f},	
		{30, 6.063746452331543f, 1629.5347900390625f},	
		{31, -1237.2099609375f, 247.38999938964844f},	
		{32, 456.3081359863281f, 2555.9462890625f},	
		{33, -686.1119995117188f, 1218.592041015625f},	
		{34, 341.9679870605469f, 2478.72802734375f},	
		{35, -635.031982421875f, 1599.0479736328125f},	
		{36, -2099.9599609375f, 929.8480224609375f},	
		{37, -2127.968017578125f, 899.68798828125f},	
		{38, -2656.919921875f, 1171.7039794921875f},	
		{39, -2185.72802734375f, 601.656005859375f},	
		{40, -48.0f, 79.0f},	
		{41, -50.0f, 76.0f},	
		{42, -70.0f, 97.0f},	
		{43, -13411.0f, 6075.0f},	
		{44, -3285.0f, 6629.0f},	
		{45, -11229.0f, 1931.0f},	
		{46, -2273.0f, 3702.0f},	
		{47, -3881.0f, 6284.0f},	
		{48, -444.0f, 10470.0f},	
		{49, -1358.0f, 10016.0f},	
		{50, -2647.0f, 2880.0f},	
		{51, -4769.0f, 4153.0f},	
		{52, 172.09678649902344f, 8764062.0f},	
		{53, 67.767822265625f, 7737239.0f},	
		{54, 104.24293518066406f, 4761911.0f},	
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

