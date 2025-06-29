#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"W_4_01_RANK_0\"},\"ModelDescriptions\":[{\"Name\":\"W_4_01_RANK_0\",\"ClassMaps\":{\"1\":\"4\",\"2\":\"b\",\"3\":\"left\",\"4\":\"right\",\"5\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakLocationDifference\",\"TwoColumnMeanDifference\",\"Variance\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
