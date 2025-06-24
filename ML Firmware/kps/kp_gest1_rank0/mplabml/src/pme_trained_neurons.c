#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={243, 21, 222, 31}},
	{.vector={28, 24, 192, 15}},
	{.vector={65, 255, 23, 245}},
	{.vector={32, 235, 0, 162}},
	{.vector={33, 90, 109, 64}},
	{.vector={94, 146, 27, 137}},
	{.vector={98, 107, 56, 188}},
	{.vector={84, 143, 34, 172}},
	{.vector={92, 179, 21, 210}},
	{.vector={78, 96, 78, 134}},
	{.vector={81, 123, 53, 124}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=150, .category=7 },
	{ .influence=150, .category=5 },
	{ .influence=140, .category=1 },
	{ .influence=150, .category=4 },
	{ .influence=150, .category=6 },
	{ .influence=51, .category=3 },
	{ .influence=69, .category=2 },
	{ .influence=60, .category=2 },
	{ .influence=150, .category=1 },
	{ .influence=65, .category=2 },
	{ .influence=150, .category=2 },
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
