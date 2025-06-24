
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

	input_columns.data[0] = GYROSCOPEX_S_GEST_1_RANK_4;
	input_columns.data[1] = GYROSCOPEY_S_GEST_1_RANK_4;
	input_columns.data[2] = GYROSCOPEZ_S_GEST_1_RANK_4;
	input_columns.data[3] = ACCELEROMETERX_S_GEST_1_RANK_4;
	input_columns.data[4] = ACCELEROMETERY_S_GEST_1_RANK_4;
	input_columns.data[5] = ACCELEROMETERZ_S_GEST_1_RANK_4;
	input_columns.size = 6;
	FrameIdx += tr_sensor_sensors(pSample, &input_columns, &kb_model->input_data[FrameIdx]);
	input_columns.data[0] = GYROSCOPEX_S_GEST_1_RANK_4;
	input_columns.data[1] = GYROSCOPEY_S_GEST_1_RANK_4;
	input_columns.data[2] = GYROSCOPEZ_S_GEST_1_RANK_4;
	input_columns.size=3;
	FrameIdx += st_sensor_average(pSample, &input_columns, &kb_model->input_data[FrameIdx]);	
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
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.data[1] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.data[2] = GYROSCOPEZ_D_GEST_1_RANK_4;	
input_columns.data[3] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.data[4] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.data[5] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=6;	
*nfeats = fg_cross_column_max_column(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_median_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_median_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_median_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_linear_regression(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_linear_regression(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_minimum(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_minimum(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_p2p_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_total_area_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_total_area_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_peak_location_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_peak_location_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_peak_location_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.data[1] = 5;	
input_params.size = 2;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_absolute_area_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.data[1] = GYROSCOPEZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.data[1] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=2;	
*nfeats = fg_cross_column_mean_difference(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEZ_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_pct025(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_pct025(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_pct025(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_power_spectrum_density(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_power_spectrum_density(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 100;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_area_power_spectrum_density(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_abs_mean(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.data[1] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.data[2] = GYROSCOPEZ_D_GEST_1_RANK_4;	
input_columns.data[3] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.data[4] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.data[5] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=6;	
*nfeats = fg_cross_column_min_column(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_skewness(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_variance(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_variance(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_variance(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_iqr(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_iqr(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_pct075(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_pct075(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_stats_pct100(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.data[0] = 5;	
input_params.size = 1;	
input_columns.data[0] = ACCELEROMETERY_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_amplitude_global_p2p_low_frequency(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = GYROSCOPEX_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_amplitude_peak_to_peak(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
input_params.size = 0;	
input_columns.data[0] = ACCELEROMETERZ_D_GEST_1_RANK_4;	
input_columns.size=1;	
*nfeats = fg_amplitude_peak_to_peak(kb_model, &input_columns, &input_params, &kb_model->pfeature_bank->pFeatures[CompIdx]);	
CompIdx += *nfeats;	
return 1;
}



int32_t feature_transform_0(void * model)
{
	kb_model_t * kb_model = (kb_model_t*)model;
	
	static struct minmax aminmax[47] = {
	
		{0, 1.0f, 6.0f},	
		{1, -2090.0f, 897.0f},	
		{2, -3060.0f, -510.0f},	
		{3, -2313.0f, 798.0f},	
		{5, -778.88720703125f, 2470.685302734375f},	
		{6, -0.6054728627204895f, 0.2764081656932831f},	
		{8, -18.238117218017578f, 13.756712913513184f},	
		{9, -917.6670532226562f, 2022.2218017578125f},	
		{10, -0.9727094173431396f, 0.49844807386398315f},	
		{12, -7650.0f, -6.0f},	
		{13, -3366.0f, -78.0f},	
		{14, -2047.0f, 3702.0f},	
		{15, -2647.0f, 2880.0f},	
		{16, 442.4190673828125f, 2555.9462890625f},	
		{17, 6.852726936340332f, 1799.2127685546875f},	
		{18, -48.0f, 79.0f},	
		{19, -50.0f, 64.0f},	
		{20, -50.0f, 76.0f},	
		{21, 7.9072723388671875f, 2212.187255859375f},	
		{22, -826.447998046875f, 1711.7760009765625f},	
		{23, -2118.632080078125f, 900.2319946289062f},	
		{24, -686.1119995117188f, 1218.592041015625f},	
		{25, -2099.9599609375f, 929.8480224609375f},	
		{26, -2127.968017578125f, 899.68798828125f},	
		{27, -2656.919921875f, 1171.7039794921875f},	
		{28, -2770.887939453125f, -600.6320190429688f},	
		{29, -2185.72802734375f, 601.656005859375f},	
		{30, -2515.0f, 223.0f},	
		{31, -3800.0f, -404.0f},	
		{32, -2235.0f, 84.0f},	
		{33, 2399197952.0f, 118030966784.0f},	
		{34, 43669400.0f, 57868685312.0f},	
		{35, 1788771968.0f, 59569012736.0f},	
		{36, 267.54400634765625f, 2038.592041015625f},	
		{37, 1.0f, 6.0f},	
		{38, -3.25988507270813f, 3.0207440853118896f},	
		{39, 172.09678649902344f, 8764062.0f},	
		{40, 67.767822265625f, 7737239.0f},	
		{41, 104.24293518066406f, 4761911.0f},	
		{42, 11.0f, 2495.0f},	
		{43, 10.0f, 3709.0f},	
		{44, -15.0f, 1541.0f},	
		{45, -1889.0f, 1257.0f},	
		{46, 18.0f, 7899.0f},	
		{47, 10.363632202148438f, 5587.2724609375f},	
		{48, 65.0f, 11072.0f},	
		{49, 43.0f, 10595.0f},	
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

