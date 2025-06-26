#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={255, 88, 185, 88, 160, 150, 120, 184, 117, 88, 170, 60, 204, 52, 61, 24, 136, 153, 185, 95, 138, 174, 115, 124, 153}},
	{.vector={51, 138, 178, 222, 187, 159, 80, 47, 117, 157, 152, 50, 111, 191, 172, 115, 127, 0, 167, 30, 243, 139, 92, 68, 121}},
	{.vector={0, 140, 191, 164, 132, 151, 29, 8, 53, 122, 137, 64, 18, 171, 181, 111, 81, 255, 143, 3, 164, 88, 57, 26, 137}},
	{.vector={102, 237, 30, 164, 83, 81, 126, 97, 255, 198, 174, 112, 189, 255, 247, 254, 7, 51, 98, 105, 148, 56, 11, 181, 77}},
	{.vector={102, 153, 177, 161, 33, 160, 120, 111, 169, 196, 179, 168, 108, 126, 173, 103, 105, 0, 161, 66, 94, 119, 77, 119, 136}},
	{.vector={255, 255, 98, 189, 118, 199, 98, 88, 62, 99, 102, 64, 58, 205, 237, 204, 113, 0, 166, 31, 68, 105, 70, 81, 186}},
	{.vector={51, 78, 209, 230, 84, 0, 0, 29, 43, 255, 226, 159, 0, 86, 131, 48, 48, 153, 0, 0, 141, 0, 39, 0, 0}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=250, .category=1 },
	{ .influence=250, .category=3 },
	{ .influence=250, .category=6 },
	{ .influence=250, .category=7 },
	{ .influence=250, .category=2 },
	{ .influence=250, .category=5 },
	{ .influence=250, .category=4 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=25,
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
