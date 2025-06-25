#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={134, 131, 145, 77, 176, 61, 30, 92, 161, 192, 223, 72, 170, 135, 116, 123, 109, 131, 178, 143}},
	{.vector={56, 130, 33, 110, 157, 164, 202, 221, 23, 107, 201, 60, 191, 121, 142, 118, 125, 118, 204, 195}},
	{.vector={57, 0, 201, 70, 20, 141, 115, 142, 61, 17, 169, 240, 181, 0, 115, 9, 56, 42, 150, 82}},
	{.vector={201, 121, 80, 105, 247, 146, 82, 152, 213, 250, 96, 57, 126, 246, 249, 185, 128, 232, 214, 214}},
	{.vector={37, 143, 81, 1, 99, 23, 91, 204, 49, 83, 212, 80, 246, 30, 34, 98, 63, 3, 255, 230}},
	{.vector={0, 184, 151, 175, 167, 87, 85, 169, 65, 150, 216, 74, 218, 87, 65, 87, 177, 53, 159, 189}},
	{.vector={243, 137, 162, 123, 225, 170, 255, 255, 67, 200, 254, 12, 0, 223, 99, 47, 131, 149, 0, 1}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=200, .category=3 },
	{ .influence=200, .category=2 },
	{ .influence=200, .category=7 },
	{ .influence=200, .category=1 },
	{ .influence=200, .category=5 },
	{ .influence=200, .category=6 },
	{ .influence=200, .category=4 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=20,
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
