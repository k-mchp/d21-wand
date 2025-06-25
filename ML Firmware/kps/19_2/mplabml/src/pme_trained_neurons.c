#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={128, 127, 125, 179, 102, 55, 198, 68, 165, 135, 125, 123, 131, 170}},
	{.vector={202, 154, 162, 214, 25, 75, 76, 71, 130, 196, 184, 127, 235, 228}},
	{.vector={203, 142, 127, 216, 129, 76, 81, 69, 129, 214, 173, 128, 233, 212}},
	{.vector={59, 225, 181, 152, 82, 81, 163, 75, 167, 60, 110, 203, 54, 212}},
	{.vector={30, 121, 120, 93, 51, 99, 193, 77, 185, 39, 101, 56, 8, 222}},
	{.vector={55, 33, 208, 17, 128, 119, 153, 209, 137, 97, 9, 95, 24, 76}},
	{.vector={242, 97, 122, 22, 105, 65, 8, 16, 10, 0, 253, 128, 155, 5}},
	{.vector={237, 133, 194, 210, 184, 171, 209, 26, 7, 92, 54, 135, 150, 8}},
	{.vector={89, 121, 62, 168, 143, 199, 179, 56, 166, 138, 118, 119, 135, 186}},
	{.vector={33, 18, 39, 24, 129, 99, 139, 220, 187, 182, 10, 71, 41, 90}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=49, .category=3 },
	{ .influence=38, .category=1 },
	{ .influence=39, .category=1 },
	{ .influence=42, .category=6 },
	{ .influence=31, .category=5 },
	{ .influence=42, .category=7 },
	{ .influence=104, .category=4 },
	{ .influence=78, .category=4 },
	{ .influence=35, .category=2 },
	{ .influence=39, .category=7 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=14,
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
