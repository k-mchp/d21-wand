#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={149, 99, 122, 10, 130, 136, 28, 37, 85, 135, 82, 61, 109, 189, 128, 219, 103, 159, 54, 120, 110, 188, 43, 86}},
	{.vector={225, 167, 59, 22, 50, 17, 0, 135, 70, 164, 43, 31, 15, 228, 55, 213, 203, 243, 108, 231, 165, 229, 33, 5}},
	{.vector={106, 237, 1, 54, 67, 255, 240, 245, 136, 72, 15, 47, 92, 19, 44, 200, 209, 210, 87, 216, 237, 25, 212, 235}},
	{.vector={234, 139, 223, 11, 137, 0, 0, 1, 8, 0, 0, 7, 1, 254, 244, 213, 30, 104, 93, 96, 61, 183, 45, 32}},
	{.vector={100, 88, 137, 118, 122, 167, 34, 35, 106, 111, 120, 86, 139, 157, 145, 169, 105, 158, 158, 185, 117, 180, 46, 82}},
	{.vector={51, 0, 226, 231, 208, 174, 44, 21, 195, 177, 193, 176, 237, 133, 215, 85, 55, 0, 234, 89, 21, 197, 30, 52}},
	{.vector={226, 177, 22, 13, 15, 69, 10, 194, 85, 186, 48, 41, 34, 181, 72, 223, 238, 234, 51, 213, 205, 182, 27, 21}},
	{.vector={208, 165, 88, 28, 53, 43, 3, 132, 89, 255, 17, 20, 14, 218, 0, 214, 186, 234, 96, 210, 157, 251, 36, 14}},
	{.vector={216, 182, 26, 13, 26, 58, 6, 170, 88, 132, 35, 70, 23, 201, 26, 196, 233, 206, 63, 205, 198, 190, 13, 23}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=100, .category=2 },
	{ .influence=45, .category=6 },
	{ .influence=100, .category=7 },
	{ .influence=100, .category=4 },
	{ .influence=100, .category=3 },
	{ .influence=100, .category=1 },
	{ .influence=54, .category=5 },
	{ .influence=100, .category=6 },
	{ .influence=100, .category=5 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=24,
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
