#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"G_37_RANK_0\"},\"ModelDescriptions\":[{\"Name\":\"G_37_RANK_0\",\"ClassMaps\":{\"1\":\"8\",\"2\":\"ccw\",\"3\":\"cw\",\"4\":\"idle\",\"5\":\"left\",\"6\":\"right\",\"7\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"Minimum\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnMeanDifference\",\"TwoColumnMeanDifference\",\"25thPercentile\",\"TotalArea\",\"AbsoluteAreaofSpectrum\",\"75thPercentile\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
