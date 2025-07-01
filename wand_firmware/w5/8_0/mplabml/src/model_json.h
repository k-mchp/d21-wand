#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"8_RANK_0\"},\"ModelDescriptions\":[{\"Name\":\"8_RANK_0\",\"ClassMaps\":{\"1\":\"4\",\"2\":\"Unknown\",\"3\":\"b\",\"4\":\"left\",\"5\":\"right\",\"6\":\"tap\",\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"GlobalPeaktoPeak\",\"Minimum\",\"TwoColumnMeanDifference\",\"TwoColumnPeakLocationDifference\",\"TwoColumnPeakToPeakDifference\",\"TwoColumnPeakToPeakDifference\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
