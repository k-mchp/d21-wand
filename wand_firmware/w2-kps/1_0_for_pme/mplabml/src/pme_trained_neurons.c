#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={154, 198, 26, 102, 148, 186, 94, 4, 30, 142, 99, 42}},
	{.vector={157, 73, 156, 68, 130, 150, 53, 64, 136, 207, 118, 149}},
	{.vector={220, 61, 23, 88, 159, 197, 101, 3, 36, 133, 130, 16}},
	{.vector={64, 105, 112, 219, 84, 101, 161, 109, 155, 50, 127, 117}},
	{.vector={143, 189, 106, 52, 122, 203, 73, 46, 63, 203, 76, 141}},
	{.vector={119, 50, 139, 51, 226, 216, 25, 89, 46, 230, 207, 253}},
	{.vector={167, 92, 38, 165, 125, 164, 138, 8, 53, 93, 126, 32}},
	{.vector={178, 88, 0, 105, 153, 197, 119, 0, 9, 106, 123, 6}},
	{.vector={200, 80, 43, 125, 185, 218, 99, 11, 15, 112, 162, 73}},
	{.vector={166, 71, 13, 169, 130, 178, 123, 1, 48, 65, 121, 29}},
	{.vector={171, 86, 20, 139, 115, 178, 119, 3, 44, 117, 86, 32}},
	{.vector={199, 23, 35, 110, 178, 203, 94, 7, 41, 144, 160, 63}},
	{.vector={182, 61, 35, 114, 191, 218, 94, 7, 5, 136, 162, 27}},
	{.vector={164, 189, 12, 150, 131, 194, 114, 2, 36, 77, 108, 39}},
	{.vector={219, 50, 11, 149, 113, 187, 140, 2, 59, 133, 108, 9}},
	{.vector={164, 103, 44, 163, 169, 184, 118, 15, 21, 135, 160, 16}},
	{.vector={201, 35, 31, 160, 144, 197, 128, 10, 41, 106, 142, 41}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=200, .category=4 },
	{ .influence=200, .category=1 },
	{ .influence=200, .category=5 },
	{ .influence=200, .category=6 },
	{ .influence=200, .category=2 },
	{ .influence=200, .category=3 },
	{ .influence=133, .category=4 },
	{ .influence=200, .category=4 },
	{ .influence=151, .category=4 },
	{ .influence=172, .category=5 },
	{ .influence=200, .category=4 },
	{ .influence=169, .category=5 },
	{ .influence=200, .category=5 },
	{ .influence=200, .category=5 },
	{ .influence=200, .category=5 },
	{ .influence=200, .category=4 },
	{ .influence=200, .category=5 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=12,
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
