#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"11_RANK_4\"},\"ModelDescriptions\":[{\"Name\":\"11_RANK_4\",\"ClassMaps\":{\"1\":\"4\",\"2\":\"Unknown\",\"3\":\"b\",\"4\":\"idle\",\"5\":\"left\",\"6\":\"right\",\"7\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"25thPercentile\",\"AbsoluteArea\",\"AbsoluteAreaofHighFrequency\",\"AbsoluteAreaofLowFrequency\",\"AbsoluteAreaofSpectrum\",\"AbsoluteAreaofSpectrum\",\"Downsample\",\"Downsample\",\"Downsample\",\"GlobalMinMaxSum\",\"GlobalPeaktoPeak\",\"GlobalPeaktoPeakofLowFrequency\",\"InterquartileRange\",\"Minimum\",\"Minimum\",\"PositiveZeroCrossings\",\"TotalAreaofLowFrequency\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
