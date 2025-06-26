#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={139, 78, 148, 111, 129, 207, 38, 124}},
	{.vector={50, 25, 224, 202, 29, 218, 178, 20}},
	{.vector={244, 30, 91, 146, 231, 207, 0, 149}},
	{.vector={204, 54, 18, 17, 238, 78, 21, 211}},
	{.vector={78, 223, 238, 244, 10, 208, 190, 43}},
	{.vector={208, 56, 45, 33, 210, 107, 15, 198}},
	{.vector={147, 82, 148, 105, 138, 172, 34, 125}},
	{.vector={192, 55, 57, 39, 176, 62, 35, 226}},
	{.vector={240, 33, 107, 65, 219, 214, 2, 135}},
	{.vector={218, 41, 18, 20, 245, 20, 23, 222}},
	{.vector={78, 16, 242, 166, 67, 201, 120, 53}},
	{.vector={124, 12, 209, 122, 114, 200, 72, 71}},
	{.vector={11, 22, 233, 155, 89, 215, 118, 55}},
	{.vector={54, 245, 213, 239, 0, 202, 250, 61}},
	{.vector={63, 198, 251, 243, 19, 208, 185, 14}},
	{.vector={101, 91, 157, 126, 113, 220, 50, 114}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=59, .category=3 },
	{ .influence=60, .category=5 },
	{ .influence=49, .category=4 },
	{ .influence=58, .category=1 },
	{ .influence=38, .category=7 },
	{ .influence=64, .category=1 },
	{ .influence=43, .category=3 },
	{ .influence=82, .category=1 },
	{ .influence=21, .category=4 },
	{ .influence=49, .category=1 },
	{ .influence=72, .category=6 },
	{ .influence=44, .category=6 },
	{ .influence=41, .category=6 },
	{ .influence=40, .category=7 },
	{ .influence=51, .category=7 },
	{ .influence=27, .category=2 },
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
