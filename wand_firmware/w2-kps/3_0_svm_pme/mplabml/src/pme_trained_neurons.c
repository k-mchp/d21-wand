#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={131, 144, 139, 166, 185, 132, 114, 205, 140, 177, 91}},
	{.vector={73, 195, 29, 101, 163, 183, 7, 91, 18, 112, 18}},
	{.vector={91, 152, 41, 97, 153, 147, 11, 97, 51, 154, 31}},
	{.vector={90, 49, 142, 125, 140, 64, 102, 17, 181, 24, 118}},
	{.vector={46, 136, 100, 172, 85, 136, 81, 83, 29, 142, 79}},
	{.vector={72, 162, 24, 120, 133, 149, 11, 57, 20, 97, 32}},
	{.vector={67, 223, 22, 144, 133, 147, 4, 135, 37, 139, 13}},
	{.vector={117, 114, 146, 31, 225, 229, 96, 83, 41, 163, 90}},
	{.vector={73, 167, 18, 131, 126, 146, 8, 88, 23, 157, 22}},
	{.vector={95, 146, 225, 127, 189, 142, 140, 173, 115, 184, 111}},
	{.vector={95, 119, 147, 36, 216, 229, 168, 136, 56, 192, 123}},
	{.vector={25, 143, 127, 229, 38, 112, 105, 124, 48, 152, 89}},
	{.vector={73, 183, 47, 86, 166, 189, 34, 72, 20, 203, 76}},
	{.vector={91, 129, 110, 64, 194, 207, 109, 112, 42, 154, 90}},
	{.vector={60, 142, 107, 150, 125, 124, 109, 136, 131, 194, 87}},
	{.vector={82, 58, 120, 126, 147, 115, 72, 23, 105, 32, 126}},
	{.vector={51, 132, 127, 187, 97, 141, 130, 99, 70, 135, 105}},
	{.vector={71, 209, 30, 133, 138, 151, 10, 202, 50, 183, 26}},
	{.vector={103, 10, 195, 120, 148, 48, 224, 24, 229, 39, 196}},
	{.vector={79, 127, 95, 65, 178, 208, 59, 99, 7, 113, 59}},
	{.vector={55, 150, 118, 205, 68, 128, 144, 140, 67, 179, 104}},
	{.vector={103, 45, 141, 120, 144, 33, 100, 10, 224, 3, 107}},
	{.vector={94, 56, 147, 123, 144, 48, 138, 24, 227, 33, 140}},
	{.vector={126, 27, 131, 91, 163, 121, 125, 17, 112, 42, 190}},
	{.vector={199, 101, 226, 197, 225, 182, 174, 194, 109, 172, 127}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=154, .category=1 },
	{ .influence=129, .category=5 },
	{ .influence=127, .category=4 },
	{ .influence=121, .category=6 },
	{ .influence=139, .category=2 },
	{ .influence=107, .category=4 },
	{ .influence=137, .category=5 },
	{ .influence=131, .category=3 },
	{ .influence=107, .category=4 },
	{ .influence=233, .category=1 },
	{ .influence=148, .category=3 },
	{ .influence=133, .category=2 },
	{ .influence=121, .category=4 },
	{ .influence=108, .category=3 },
	{ .influence=164, .category=2 },
	{ .influence=156, .category=6 },
	{ .influence=128, .category=2 },
	{ .influence=99, .category=5 },
	{ .influence=113, .category=6 },
	{ .influence=80, .category=3 },
	{ .influence=130, .category=2 },
	{ .influence=83, .category=6 },
	{ .influence=139, .category=6 },
	{ .influence=140, .category=6 },
	{ .influence=238, .category=1 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=11,
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
