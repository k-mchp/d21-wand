#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"G_19_RANK_2\"},\"ModelDescriptions\":[{\"Name\":\"G_19_RANK_2\",\"ClassMaps\":{\"1\":\"8\",\"2\":\"ccw\",\"3\":\"cw\",\"4\":\"idle\",\"5\":\"left\",\"6\":\"right\",\"7\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"Minimum\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\",\"TotalAreaofLowFrequency\",\"TwoColumnPeakLocationDifference\",\"TwoColumnPeakLocationDifference\",\"TwoColumnMeanDifference\",\"AbsoluteAreaofHighFrequency\",\"AbsoluteAreaofHighFrequency\",\"AbsoluteAreaofSpectrum\",\"AbsoluteMean\",\"Skewness\",\"75thPercentile\",\"GlobalPeaktoPeak\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
