#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={47, 0, 0, 17}},
	{.vector={0, 0, 0, 138}},
	{.vector={216, 255, 255, 134}},
	{.vector={238, 0, 0, 167}},
	{.vector={207, 0, 0, 226}},
	{.vector={114, 255, 255, 175}},
	{.vector={60, 127, 255, 130}},
	{.vector={74, 255, 255, 122}},
	{.vector={214, 0, 0, 189}},
	{.vector={147, 255, 255, 97}},
	{.vector={84, 255, 255, 153}},
	{.vector={254, 0, 0, 222}},
	{.vector={176, 178, 255, 139}},
	{.vector={61, 229, 255, 127}},
	{.vector={111, 255, 255, 132}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=100, .category=7 },
	{ .influence=100, .category=4 },
	{ .influence=100, .category=2 },
	{ .influence=46, .category=5 },
	{ .influence=44, .category=6 },
	{ .influence=46, .category=1 },
	{ .influence=100, .category=3 },
	{ .influence=41, .category=3 },
	{ .influence=73, .category=5 },
	{ .influence=71, .category=2 },
	{ .influence=48, .category=1 },
	{ .influence=100, .category=6 },
	{ .influence=100, .category=2 },
	{ .influence=81, .category=3 },
	{ .influence=100, .category=2 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=4,
		.max_patterns=MAX_NUM_NEURONS_0,
		.num_classes=NUM_CLASSES_0,
		.num_channels=1,
		.classifier_mode=KB_CLASSIFICATION_RBF,
		.norm_mode=KB_DISTANCE_L1,
		.stored_patterns=kb_neuron_vectors_0,
		.stored_attribs=kb_neuron_attribs_0,
	},
};

const int32_t neurons_count = KB_TOTAL_NUMBER_OF_NEURONS;
