#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={222, 193, 223, 39, 242, 159, 92, 131, 5, 75, 219, 57, 69, 44, 79, 55}},
	{.vector={99, 76, 136, 39, 147, 116, 36, 109, 65, 126, 4, 184, 171, 108, 121, 87}},
	{.vector={37, 57, 196, 210, 25, 233, 201, 232, 121, 199, 13, 248, 244, 244, 242, 208}},
	{.vector={140, 77, 149, 53, 183, 141, 84, 121, 43, 109, 42, 68, 170, 93, 122, 90}},
	{.vector={74, 45, 83, 225, 157, 67, 246, 96, 108, 151, 28, 233, 253, 211, 238, 26}},
	{.vector={68, 30, 23, 105, 132, 21, 164, 81, 106, 163, 3, 203, 212, 145, 165, 31}},
	{.vector={0, 4, 0, 2, 11, 0, 11, 1, 254, 23, 0, 89, 129, 47, 77, 32}},
	{.vector={105, 53, 25, 160, 153, 17, 217, 135, 90, 134, 29, 202, 234, 191, 220, 4}},
	{.vector={99, 43, 101, 53, 171, 97, 88, 93, 42, 110, 6, 138, 188, 118, 143, 90}},
	{.vector={115, 57, 123, 48, 185, 106, 67, 100, 99, 155, 12, 183, 178, 119, 181, 87}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=100, .category=1 },
	{ .influence=52, .category=3 },
	{ .influence=100, .category=7 },
	{ .influence=70, .category=2 },
	{ .influence=65, .category=5 },
	{ .influence=55, .category=6 },
	{ .influence=100, .category=4 },
	{ .influence=100, .category=5 },
	{ .influence=57, .category=2 },
	{ .influence=100, .category=3 },
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
		.norm_mode=KB_DISTANCE_LSUP,
		.stored_patterns=kb_neuron_vectors_0,
		.stored_attribs=kb_neuron_attribs_0,
	},
};

const int32_t neurons_count = KB_TOTAL_NUMBER_OF_NEURONS;
