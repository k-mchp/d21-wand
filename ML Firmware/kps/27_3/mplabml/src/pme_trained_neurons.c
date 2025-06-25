#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={242, 176, 78, 82, 208, 13, 204, 58, 200, 216, 248, 244, 244, 163, 83, 48}},
	{.vector={85, 1, 236, 183, 36, 6, 30, 23, 4, 28, 83, 138, 59, 0, 3, 2}},
	{.vector={143, 14, 85, 235, 19, 37, 123, 40, 25, 143, 158, 197, 114, 2, 146, 96}},
	{.vector={238, 23, 56, 179, 48, 20, 255, 70, 48, 244, 235, 236, 213, 6, 101, 94}},
	{.vector={74, 54, 176, 199, 52, 238, 7, 212, 239, 123, 38, 57, 35, 78, 207, 241}},
	{.vector={131, 105, 75, 189, 74, 8, 73, 92, 128, 83, 119, 170, 116, 34, 181, 130}},
	{.vector={119, 85, 138, 177, 66, 9, 80, 88, 123, 87, 171, 168, 98, 31, 144, 105}},
	{.vector={153, 70, 132, 183, 73, 5, 82, 57, 109, 92, 126, 173, 101, 24, 161, 119}},
	{.vector={220, 23, 89, 193, 4, 29, 151, 54, 25, 179, 202, 234, 191, 2, 204, 110}},
	{.vector={121, 90, 114, 176, 95, 25, 48, 44, 129, 57, 88, 159, 76, 37, 151, 112}},
	{.vector={181, 85, 140, 166, 87, 12, 98, 57, 126, 93, 183, 178, 119, 31, 155, 122}},
	{.vector={168, 24, 0, 251, 14, 2, 160, 43, 38, 180, 205, 210, 149, 3, 172, 96}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=200, .category=7 },
	{ .influence=200, .category=4 },
	{ .influence=200, .category=6 },
	{ .influence=200, .category=5 },
	{ .influence=200, .category=1 },
	{ .influence=200, .category=2 },
	{ .influence=200, .category=3 },
	{ .influence=200, .category=2 },
	{ .influence=200, .category=5 },
	{ .influence=200, .category=2 },
	{ .influence=200, .category=3 },
	{ .influence=200, .category=6 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=16,
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
