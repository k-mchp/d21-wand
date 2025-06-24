#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={209, 156, 165, 205, 153, 128}},
	{.vector={19, 12, 59, 48, 153, 140}},
	{.vector={3, 110, 186, 87, 0, 165}},
	{.vector={113, 102, 128, 0, 153, 157}},
	{.vector={104, 131, 152, 119, 0, 228}},
	{.vector={117, 110, 104, 135, 153, 240}},
	{.vector={143, 249, 0, 63, 153, 8}},
	{.vector={228, 204, 190, 255, 0, 160}},
	{.vector={131, 46, 0, 62, 153, 230}},
	{.vector={42, 106, 255, 102, 255, 182}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=112, .category=1 },
	{ .influence=94, .category=7 },
	{ .influence=101, .category=5 },
	{ .influence=127, .category=2 },
	{ .influence=136, .category=3 },
	{ .influence=104, .category=3 },
	{ .influence=150, .category=4 },
	{ .influence=150, .category=1 },
	{ .influence=150, .category=4 },
	{ .influence=150, .category=6 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=6,
		.max_patterns=MAX_NUM_NEURONS_0,
		.num_classes=NUM_CLASSES_0,
		.num_channels=1,
		.classifier_mode=KB_CLASSIFICATION_KNN,
		.norm_mode=KB_DISTANCE_LSUP,
		.stored_patterns=kb_neuron_vectors_0,
		.stored_attribs=kb_neuron_attribs_0,
	},
};

const int32_t neurons_count = KB_TOTAL_NUMBER_OF_NEURONS;
