
// FILL_SENSIML_EMBEDDED_SDK

#include "kbalgorithms.h"

int32_t fg_amplitude_min_max_sum(kb_model_t *kb_model, int16_data_t *cols_to_use, float_data_t *params, FLOAT *pFV)
{
	int32_t icol;
	int32_t min, max;

#if SML_DEBUG
	if (!kb_model || kb_model->sg_length <= 0 || !cols_to_use || cols_to_use->size <= 0 || params->size != 0 || !params || !pFV)
	{
		return 0;
	}
#endif

	for (icol = 0; icol < cols_to_use->size; icol++)
	{
		buffer_min_max(kb_model->pdata_buffer->data + cols_to_use->data[icol], kb_model->sg_index, kb_model->sg_length, 0, &min, &max);
		pFV[icol] = (FLOAT)(max + min);
	}

	return cols_to_use->size;
}