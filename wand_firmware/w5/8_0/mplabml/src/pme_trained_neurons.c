#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={7, 62, 109, 6, 137, 153}},
	{.vector={119, 244, 145, 28, 237, 26}},
	{.vector={136, 205, 56, 5, 136, 152}},
	{.vector={141, 210, 79, 223, 216, 119}},
	{.vector={21, 186, 32, 114, 49, 203}},
	{.vector={56, 202, 157, 231, 222, 142}},
	{.vector={180, 236, 117, 159, 231, 50}},
	{.vector={73, 170, 157, 137, 221, 92}},
	{.vector={69, 122, 124, 18, 142, 127}},
	{.vector={73, 249, 20, 70, 179, 137}},
	{.vector={99, 201, 248, 15, 250, 93}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=62, .category=4 },
	{ .influence=100, .category=6 },
	{ .influence=65, .category=1 },
	{ .influence=69, .category=3 },
	{ .influence=96, .category=5 },
	{ .influence=94, .category=2 },
	{ .influence=100, .category=6 },
	{ .influence=100, .category=2 },
	{ .influence=100, .category=2 },
	{ .influence=100, .category=2 },
	{ .influence=100, .category=2 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=6,
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
