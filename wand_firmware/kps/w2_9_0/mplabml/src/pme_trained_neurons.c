#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={36, 108, 116, 38, 200, 3, 148, 73, 8, 56, 227}},
	{.vector={144, 192, 238, 110, 84, 119, 40, 179, 168, 46, 85}},
	{.vector={136, 175, 3, 74, 35, 65, 171, 85, 141, 24, 213}},
	{.vector={129, 130, 116, 105, 83, 44, 145, 160, 238, 74, 197}},
	{.vector={161, 101, 115, 124, 120, 76, 4, 3, 46, 74, 21}},
	{.vector={113, 51, 175, 200, 17, 26, 148, 110, 87, 119, 211}},
	{.vector={214, 112, 107, 143, 106, 104, 7, 11, 89, 62, 34}},
	{.vector={171, 107, 99, 127, 122, 129, 6, 27, 81, 28, 32}},
	{.vector={206, 155, 58, 129, 111, 132, 6, 37, 55, 40, 36}},
	{.vector={194, 98, 121, 161, 95, 46, 17, 30, 54, 81, 61}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=250, .category=6 },
	{ .influence=250, .category=1 },
	{ .influence=250, .category=2 },
	{ .influence=250, .category=1 },
	{ .influence=208, .category=4 },
	{ .influence=250, .category=3 },
	{ .influence=174, .category=5 },
	{ .influence=192, .category=4 },
	{ .influence=250, .category=5 },
	{ .influence=250, .category=5 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=11,
		.max_patterns=MAX_NUM_NEURONS_0,
		.num_classes=NUM_CLASSES_0,
		.num_channels=1,
		.classifier_mode=KB_CLASSIFICATION_KNN,
		.norm_mode=KB_DISTANCE_L1,
		.stored_patterns=kb_neuron_vectors_0,
		.stored_attribs=kb_neuron_attribs_0,
	},
};

const int32_t neurons_count = KB_TOTAL_NUMBER_OF_NEURONS;
