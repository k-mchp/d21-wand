#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={222, 26, 19, 69, 10, 36, 53, 39, 171, 235, 146, 240, 186, 35, 234, 103, 37, 82, 121, 236, 229, 202, 197, 32}},
	{.vector={156, 0, 55, 252, 255, 16, 30, 78, 83, 182, 245, 227, 27, 65, 244, 253, 255, 181, 255, 212, 216, 242, 0, 255}},
	{.vector={68, 225, 197, 203, 51, 183, 184, 218, 224, 237, 210, 195, 217, 209, 45, 95, 20, 13, 76, 31, 36, 28, 186, 66}},
	{.vector={134, 143, 114, 134, 27, 62, 57, 135, 153, 230, 162, 158, 162, 161, 64, 106, 37, 56, 99, 100, 150, 106, 190, 71}},
	{.vector={217, 107, 68, 22, 1, 35, 27, 21, 182, 220, 130, 224, 169, 116, 155, 122, 66, 70, 114, 143, 214, 127, 246, 7}},
	{.vector={234, 236, 148, 0, 0, 0, 0, 0, 8, 56, 8, 25, 107, 247, 3, 2, 4, 227, 0, 11, 91, 144, 184, 28}},
	{.vector={165, 97, 121, 129, 25, 87, 84, 112, 177, 248, 152, 202, 191, 42, 114, 116, 19, 45, 98, 141, 177, 143, 212, 72}},
	{.vector={173, 144, 156, 133, 28, 73, 78, 127, 182, 245, 137, 227, 201, 120, 97, 92, 11, 33, 82, 80, 142, 97, 192, 77}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=150, .category=5 },
	{ .influence=150, .category=7 },
	{ .influence=150, .category=1 },
	{ .influence=150, .category=3 },
	{ .influence=150, .category=6 },
	{ .influence=150, .category=4 },
	{ .influence=150, .category=2 },
	{ .influence=150, .category=2 },
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
