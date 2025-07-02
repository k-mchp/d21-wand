#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={1, 7, 132, 6, 2, 248, 241, 138}},
	{.vector={115, 61, 125, 62, 109, 216, 190, 127}},
	{.vector={120, 61, 123, 68, 117, 201, 211, 127}},
	{.vector={46, 199, 212, 161, 42, 183, 234, 213}},
	{.vector={26, 197, 48, 177, 23, 72, 221, 159}},
	{.vector={21, 204, 33, 205, 22, 55, 226, 175}},
	{.vector={26, 225, 22, 227, 31, 19, 222, 169}},
	{.vector={100, 103, 124, 123, 118, 193, 204, 161}},
	{.vector={94, 85, 116, 99, 106, 203, 195, 152}},
	{.vector={47, 219, 211, 186, 41, 165, 244, 224}},
	{.vector={180, 30, 137, 38, 237, 227, 52, 26}},
	{.vector={157, 31, 133, 39, 176, 224, 69, 39}},
	{.vector={64, 215, 237, 193, 62, 185, 235, 235}},
	{.vector={88, 116, 132, 121, 89, 181, 216, 164}},
	{.vector={23, 196, 76, 205, 23, 45, 223, 166}},
	{.vector={145, 127, 118, 77, 97, 173, 191, 109}},
	{.vector={46, 191, 230, 183, 51, 192, 229, 232}},
	{.vector={146, 178, 157, 100, 118, 222, 164, 144}},
	{.vector={150, 21, 131, 31, 214, 234, 65, 39}},
	{.vector={206, 50, 144, 57, 237, 219, 71, 42}},
	{.vector={177, 43, 134, 51, 224, 215, 14, 7}},
	{.vector={66, 179, 74, 110, 56, 124, 191, 110}},
	{.vector={91, 157, 171, 78, 71, 242, 180, 149}},
	{.vector={123, 105, 127, 83, 87, 170, 228, 139}},
	{.vector={243, 42, 132, 69, 244, 218, 9, 28}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=22, .category=4 },
	{ .influence=40, .category=3 },
	{ .influence=49, .category=3 },
	{ .influence=53, .category=6 },
	{ .influence=58, .category=5 },
	{ .influence=60, .category=5 },
	{ .influence=66, .category=5 },
	{ .influence=55, .category=1 },
	{ .influence=54, .category=1 },
	{ .influence=59, .category=6 },
	{ .influence=56, .category=7 },
	{ .influence=72, .category=7 },
	{ .influence=48, .category=6 },
	{ .influence=69, .category=1 },
	{ .influence=58, .category=5 },
	{ .influence=96, .category=2 },
	{ .influence=46, .category=6 },
	{ .influence=110, .category=2 },
	{ .influence=46, .category=7 },
	{ .influence=46, .category=7 },
	{ .influence=69, .category=7 },
	{ .influence=92, .category=2 },
	{ .influence=65, .category=2 },
	{ .influence=57, .category=2 },
	{ .influence=43, .category=7 },
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
