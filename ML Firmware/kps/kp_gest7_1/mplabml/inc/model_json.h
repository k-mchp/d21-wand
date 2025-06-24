#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"GEST_7_RANK_1\"},\"ModelDescriptions\":[{\"Name\":\"GEST_7_RANK_1\",\"ClassMaps\":{\"1\":\"8\",\"2\":\"ccw\",\"3\":\"cw\",\"4\":\"idle\",\"5\":\"left\",\"6\":\"right\",\"7\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"AbsoluteAreaofLowFrequency\",\"AbsoluteAreaofLowFrequency\",\"AbsoluteAreaofLowFrequency\",\"AbsoluteAreaofSpectrum\",\"MFE\",\"PowerSpectrum\",\"PowerSpectrum\",\"PowerSpectrum\",\"SpectralEntropy\",\"SpectralEntropy\",\"TotalAreaofLowFrequency\",\"TwoColumnMeanDifference\",\"TwoColumnMeanDifference\",\"TwoColumnMeanDifference\",\"TwoColumnMedianDifference\",\"TwoColumnPeakToPeakDifference\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
