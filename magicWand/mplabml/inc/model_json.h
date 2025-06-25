#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"PIPELINE_2_RANK_1\"},\"ModelDescriptions\":[{\"Name\":\"PIPELINE_2_RANK_1\",\"ClassMaps\":{\"1\":\"ADL\",\"2\":\"Fall\",\"0\":\"Unknown\"},\"ModelType\":\"DecisionTreeEnsemble\",\"FeatureFunctions\":[\"MFE\",\"MFE\",\"MFE\",\"MFE\",\"MFE\",\"MFE\",\"MFE\",\"MFE\",\"MFE\",\"PeakFrequencies\",\"PeakFrequencies\",\"PeakFrequencies\",\"PeakHarmonicProductSpectrum\",\"PeakHarmonicProductSpectrum\",\"PeakHarmonicProductSpectrum\",\"PeakHarmonicProductSpectrum\",\"PowerSpectrum\",\"PowerSpectrum\",\"PowerSpectrum\",\"PowerSpectrum\",\"PowerSpectrum\",\"PowerSpectrum\",\"SpectralEntropy\",\"SpectralEntropy\"]}]}"};

int32_t recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
