#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={29, 20, 52, 112, 102, 104, 172, 161, 71, 157, 84, 103, 137, 145, 0, 191, 99, 116, 235, 175, 202, 194, 99, 19}},
	{.vector={234, 215, 176, 196, 177, 124, 174, 184, 198, 25, 32, 232, 233, 175, 153, 183, 29, 76, 60, 141, 16, 96, 76, 131}},
	{.vector={139, 127, 137, 98, 118, 194, 126, 131, 110, 100, 117, 146, 179, 155, 153, 139, 17, 87, 94, 233, 102, 199, 45, 88}},
	{.vector={200, 208, 163, 168, 152, 120, 159, 190, 214, 21, 135, 225, 233, 177, 153, 180, 30, 81, 35, 134, 38, 112, 76, 107}},
	{.vector={13, 33, 194, 3, 12, 159, 64, 91, 59, 181, 123, 90, 114, 242, 102, 58, 88, 203, 236, 154, 236, 148, 124, 122}},
	{.vector={123, 138, 129, 122, 127, 237, 155, 159, 9, 227, 99, 118, 156, 150, 153, 185, 14, 91, 92, 143, 110, 160, 202, 103}},
	{.vector={128, 113, 114, 106, 126, 107, 142, 150, 121, 94, 117, 127, 156, 151, 0, 153, 10, 106, 115, 230, 115, 213, 39, 60}},
	{.vector={104, 70, 24, 113, 99, 0, 185, 155, 74, 189, 207, 63, 119, 131, 255, 201, 102, 130, 152, 184, 132, 172, 79, 4}},
	{.vector={227, 159, 19, 210, 247, 4, 14, 14, 65, 191, 127, 61, 75, 124, 114, 12, 163, 2, 23, 8, 143, 9, 88, 0}},
	{.vector={139, 146, 123, 110, 118, 195, 131, 141, 26, 241, 148, 126, 153, 152, 153, 151, 13, 87, 83, 159, 93, 157, 85, 84}},
	{.vector={73, 54, 28, 101, 107, 21, 154, 112, 106, 146, 205, 81, 122, 128, 242, 149, 106, 123, 195, 162, 163, 161, 80, 10}},
	{.vector={236, 147, 0, 212, 249, 0, 1, 2, 61, 146, 125, 6, 7, 11, 153, 0, 244, 0, 10, 12, 144, 8, 76, 0}},
	{.vector={237, 220, 162, 245, 213, 127, 180, 215, 218, 26, 33, 232, 239, 170, 0, 191, 39, 70, 74, 164, 19, 88, 78, 112}},
	{.vector={0, 61, 216, 11, 20, 220, 88, 83, 58, 168, 125, 80, 125, 246, 153, 60, 120, 241, 210, 154, 239, 157, 77, 254}},
	{.vector={19, 14, 184, 6, 11, 137, 45, 59, 78, 152, 154, 59, 105, 248, 127, 34, 65, 157, 243, 154, 243, 158, 116, 106}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=352, .category=5 },
	{ .influence=271, .category=1 },
	{ .influence=345, .category=3 },
	{ .influence=293, .category=1 },
	{ .influence=315, .category=7 },
	{ .influence=307, .category=2 },
	{ .influence=351, .category=3 },
	{ .influence=318, .category=6 },
	{ .influence=364, .category=4 },
	{ .influence=421, .category=2 },
	{ .influence=345, .category=6 },
	{ .influence=159, .category=4 },
	{ .influence=240, .category=1 },
	{ .influence=178, .category=7 },
	{ .influence=182, .category=7 },
};
kb_classifier_row_t kb_classifier_rows[1] = {
	

	{
		.classifier_id=0,
		.num_patterns=NUM_NEURONS_0,
		.pattern_size=24,
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
