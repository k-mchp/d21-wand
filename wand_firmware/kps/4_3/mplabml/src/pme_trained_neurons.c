#include "pme_trained_neurons.h"

static qm_pme_neuron_vector_t kb_neuron_vectors_0[MAX_NUM_NEURONS_0] = 
{
	{.vector={199, 76, 103, 214, 116, 172, 218, 132, 203, 91, 134, 72, 142, 116}},
	{.vector={165, 65, 224, 172, 157, 208, 55, 121, 166, 169, 150, 208, 127, 9}},
	{.vector={130, 15, 3, 97, 44, 0, 240, 131, 214, 230, 212, 186, 134, 184}},
	{.vector={12, 74, 163, 30, 104, 188, 34, 49, 88, 189, 104, 165, 129, 176}},
	{.vector={58, 220, 190, 211, 10, 85, 22, 75, 5, 159, 120, 60, 8, 78}},
	{.vector={106, 65, 160, 122, 121, 161, 152, 111, 182, 184, 82, 40, 147, 147}},
	{.vector={138, 20, 20, 4, 245, 13, 230, 255, 29, 15, 92, 97, 120, 124}},
	{.vector={37, 78, 173, 60, 119, 190, 59, 226, 122, 123, 76, 80, 243, 116}},
	{.vector={101, 50, 113, 129, 93, 139, 91, 128, 170, 181, 146, 89, 136, 62}},
	{.vector={206, 83, 99, 191, 159, 178, 177, 117, 199, 69, 8, 46, 139, 167}},
	{.vector={5, 205, 100, 95, 0, 38, 48, 160, 2, 158, 128, 121, 78, 255}},
	{.vector={39, 62, 173, 54, 105, 194, 35, 206, 147, 155, 68, 87, 217, 234}},
	{.vector={142, 5, 8, 3, 249, 5, 246, 0, 24, 11, 110, 131, 99, 120}},
};
qm_pme_neuron_attribute_t kb_neuron_attribs_0[MAX_NUM_NEURONS_0] = 
{
	{ .influence=93, .category=1 },
	{ .influence=119, .category=2 },
	{ .influence=149, .category=4 },
	{ .influence=114, .category=5 },
	{ .influence=170, .category=7 },
	{ .influence=85, .category=3 },
	{ .influence=166, .category=4 },
	{ .influence=107, .category=6 },
	{ .influence=138, .category=2 },
	{ .influence=167, .category=1 },
	{ .influence=156, .category=7 },
	{ .influence=180, .category=6 },
	{ .influence=180, .category=4 },
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
