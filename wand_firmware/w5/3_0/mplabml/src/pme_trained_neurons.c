#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={36, 116, 68, 131, 104, 210, 221, 133}},
	{.vector={212, 44, 11, 245, 48, 207, 228, 239}},
	{.vector={1, 179, 164, 131, 222, 240, 51, 14}},
	{.vector={112, 121, 46, 85, 79, 178, 184, 134}},
	{.vector={103, 89, 39, 123, 84, 194, 233, 173}},
	{.vector={93, 101, 53, 110, 110, 200, 200, 163}},
	{.vector={95, 123, 54, 124, 74, 171, 205, 136}},
	{.vector={214, 8, 1, 28, 12, 65, 213, 184}},
	{.vector={145, 81, 26, 172, 68, 249, 156, 143}},
	{.vector={90, 114, 62, 121, 80, 173, 252, 129}},
	{.vector={47, 159, 103, 115, 80, 233, 234, 158}},
	{.vector={192, 57, 25, 78, 34, 144, 187, 131}},
	{.vector={150, 81, 39, 172, 59, 186, 220, 175}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=43, .category=3 },
	{ .influence=73, .category=5 },
	{ .influence=143, .category=6 },
	{ .influence=31, .category=2 },
	{ .influence=33, .category=1 },
	{ .influence=36, .category=1 },
	{ .influence=47, .category=2 },
	{ .influence=79, .category=4 },
	{ .influence=64, .category=2 },
	{ .influence=60, .category=2 },
	{ .influence=103, .category=2 },
	{ .influence=94, .category=2 },
	{ .influence=200, .category=2 },
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
		.norm_mode=KB_DISTANCE_LSUP,
		.stored_patterns=kb_neuron_vectors_0,
		.stored_attribs=kb_neuron_attribs_0,
	},
};

const int32_t neurons_count = KB_TOTAL_NUMBER_OF_NEURONS;
