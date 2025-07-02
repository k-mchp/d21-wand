#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"12_RANK_1\"},\"ModelDescriptions\":[{\"Name\":\"12_RANK_1\",\"ClassMaps\":{\"1\":\"4\",\"2\":\"Unknown\",\"3\":\"b\",\"4\":\"idle\",\"5\":\"left\",\"6\":\"right\",\"7\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"AbsoluteAreaofLowFrequency\",\"AbsoluteMean\",\"Downsample\",\"GlobalPeaktoPeak\",\"GlobalPeaktoPeakofLowFrequency\",\"Minimum\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
