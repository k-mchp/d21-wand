#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"G_1_RANK_1\"},\"ModelDescriptions\":[{\"Name\":\"G_1_RANK_1\",\"ClassMaps\":{\"1\":\"8\",\"2\":\"ccw\",\"3\":\"cw\",\"4\":\"left\",\"5\":\"right\",\"6\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"DecisionTreeEnsemble\",\"FeatureFunctions\":[\"TwoColumnMedianDifference\",\"TwoColumnMedianDifference\",\"TwoColumnPeakToPeakDifference\",\"AbsoluteAreaofLowFrequency\",\"TwoColumnMeanDifference\",\"TwoColumnMeanDifference\",\"TwoColumnMeanDifference\",\"Variance\",\"InterquartileRange\",\"InterquartileRange\",\"InterquartileRange\",\"75thPercentile\",\"75thPercentile\",\"AbsoluteSum\",\"AbsoluteSum\",\"GlobalPeaktoPeak\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
