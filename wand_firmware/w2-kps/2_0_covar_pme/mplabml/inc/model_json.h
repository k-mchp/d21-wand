#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"G_2_RANK_0\"},\"ModelDescriptions\":[{\"Name\":\"G_2_RANK_0\",\"ClassMaps\":{\"1\":\"8\",\"2\":\"ccw\",\"3\":\"cw\",\"4\":\"left\",\"5\":\"right\",\"6\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"TwoColumnMeanDifference\",\"TwoColumnMeanDifference\",\"Variance\",\"75thPercentile\",\"AbsoluteSum\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
