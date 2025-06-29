#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={161, 147, 149, 10}},
	{.vector={166, 195, 205, 127}},
	{.vector={134, 67, 177, 181}},
	{.vector={229, 136, 209, 7}},
	{.vector={31, 178, 25, 120}},
	{.vector={20, 177, 32, 169}},
	{.vector={207, 195, 188, 7}},
	{.vector={159, 216, 155, 14}},
	{.vector={37, 171, 97, 134}},
	{.vector={240, 13, 230, 4}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=34, .category=3 },
	{ .influence=40, .category=1 },
	{ .influence=53, .category=2 },
	{ .influence=57, .category=4 },
	{ .influence=51, .category=5 },
	{ .influence=57, .category=5 },
	{ .influence=43, .category=4 },
	{ .influence=28, .category=3 },
	{ .influence=58, .category=5 },
	{ .influence=33, .category=4 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=4,
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
