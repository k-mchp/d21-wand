#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={28, 146, 162, 43, 140, 203, 139, 10}},
	{.vector={26, 179, 115, 17, 176, 125, 180, 7}},
	{.vector={177, 242, 23, 115, 196, 35, 144, 129}},
	{.vector={206, 151, 64, 92, 57, 240, 119, 175}},
	{.vector={146, 50, 170, 217, 161, 115, 32, 125}},
	{.vector={162, 82, 197, 209, 180, 22, 26, 146}},
	{.vector={39, 102, 183, 43, 221, 201, 138, 15}},
	{.vector={164, 61, 211, 227, 157, 127, 13, 178}},
	{.vector={19, 173, 112, 13, 67, 110, 193, 5}},
	{.vector={29, 158, 216, 40, 148, 125, 173, 13}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=123, .category=3 },
	{ .influence=127, .category=4 },
	{ .influence=89, .category=1 },
	{ .influence=123, .category=2 },
	{ .influence=135, .category=5 },
	{ .influence=129, .category=5 },
	{ .influence=82, .category=3 },
	{ .influence=143, .category=5 },
	{ .influence=134, .category=4 },
	{ .influence=134, .category=4 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=8,
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
