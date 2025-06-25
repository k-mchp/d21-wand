#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={73, 217, 211, 185, 28, 58, 193, 28, 249, 79, 32, 16, 12, 12, 26, 215, 217, 87, 230, 216, 40, 206, 230, 227}},
	{.vector={16, 82, 63, 255, 15, 0, 3, 183, 69, 202, 205, 205, 137, 244, 152, 81, 129, 1, 89, 188, 230, 26, 26, 245}},
	{.vector={0, 171, 242, 166, 55, 38, 0, 20, 5, 18, 83, 112, 34, 254, 129, 238, 0, 0, 10, 0, 234, 1, 0, 2}},
	{.vector={45, 31, 13, 184, 35, 39, 16, 255, 50, 255, 218, 247, 193, 253, 169, 35, 111, 16, 59, 163, 255, 33, 68, 228}},
	{.vector={120, 105, 133, 161, 58, 94, 43, 85, 83, 76, 177, 144, 98, 82, 73, 134, 123, 54, 113, 172, 173, 162, 155, 143}},
	{.vector={99, 93, 81, 161, 50, 104, 11, 114, 81, 103, 122, 178, 106, 159, 103, 119, 107, 53, 101, 160, 250, 117, 133, 161}},
	{.vector={208, 12, 57, 33, 218, 230, 13, 245, 67, 243, 251, 253, 244, 182, 244, 9, 47, 255, 151, 87, 251, 50, 224, 76}},
	{.vector={101, 96, 125, 157, 37, 75, 9, 97, 104, 98, 170, 160, 89, 154, 51, 137, 105, 50, 139, 155, 223, 176, 135, 193}},
	{.vector={106, 141, 108, 178, 34, 88, 7, 65, 70, 71, 89, 144, 75, 180, 51, 148, 117, 45, 97, 175, 226, 141, 125, 187}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=100, .category=1 },
	{ .influence=100, .category=6 },
	{ .influence=100, .category=4 },
	{ .influence=100, .category=5 },
	{ .influence=100, .category=3 },
	{ .influence=100, .category=2 },
	{ .influence=100, .category=7 },
	{ .influence=100, .category=3 },
	{ .influence=100, .category=2 },
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
		.norm_mode=KB_DISTANCE_L1,
		.stored_patterns=kb_neuron_vectors_0,
		.stored_attribs=kb_neuron_attribs_0,
	},
};

const int32_t neurons_count = KB_TOTAL_NUMBER_OF_NEURONS;
