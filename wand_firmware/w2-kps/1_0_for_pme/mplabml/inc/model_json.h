#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"G_1_RANK_0\"},\"ModelDescriptions\":[{\"Name\":\"G_1_RANK_0\",\"ClassMaps\":{\"1\":\"8\",\"2\":\"ccw\",\"3\":\"cw\",\"4\":\"left\",\"5\":\"right\",\"6\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakLocationDifference\",\"AbsoluteAreaofLowFrequency\",\"AbsoluteAreaofLowFrequency\",\"TwoColumnMeanDifference\",\"TwoColumnMeanDifference\",\"25thPercentile\",\"Variance\",\"75thPercentile\",\"75thPercentile\",\"Sum\",\"GlobalPeaktoPeakofLowFrequency\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
