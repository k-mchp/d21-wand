#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-SAMD21_IOT_WG_ICM42688.mk)" "nbproject/Makefile-local-SAMD21_IOT_WG_ICM42688.mk"
include nbproject/Makefile-local-SAMD21_IOT_WG_ICM42688.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=SAMD21_IOT_WG_ICM42688
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app_config/icm42688/icm42688_sensor.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c ../Icm426xx/Icm426xxDriver_HL.c ../Icm426xx/Icm426xxDriver_HL_apex.c ../Icm426xx/Icm426xxSelfTest.c ../Icm426xx/Icm426xxTransport.c ../src/main.c ../src/ringbuffer.c ../kps/kp_gest10_0/mplabml/src/array_contains.c ../kps/kp_gest10_0/mplabml/src/calc_area.c ../kps/kp_gest10_0/mplabml/src/column_to_row_complex.c ../kps/kp_gest10_0/mplabml/src/crossing_rate.c ../kps/kp_gest10_0/mplabml/src/dsp_dtw_distance.c ../kps/kp_gest10_0/mplabml/src/dsp_l1_distance.c ../kps/kp_gest10_0/mplabml/src/dsp_lsup_distance.c ../kps/kp_gest10_0/mplabml/src/fftr.c ../kps/kp_gest10_0/mplabml/src/fftr_utils.c ../kps/kp_gest10_0/mplabml/src/fg_amplitude_global_p2p_low_frequency.c ../kps/kp_gest10_0/mplabml/src/fg_amplitude_peak_to_peak.c ../kps/kp_gest10_0/mplabml/src/fg_area_absolute_area_low_frequency.c ../kps/kp_gest10_0/mplabml/src/fg_area_power_spectrum_density.c ../kps/kp_gest10_0/mplabml/src/fg_area_total_area.c ../kps/kp_gest10_0/mplabml/src/fg_area_total_area_low_frequency.c ../kps/kp_gest10_0/mplabml/src/fg_cross_max_column.c ../kps/kp_gest10_0/mplabml/src/fg_cross_mean_difference.c ../kps/kp_gest10_0/mplabml/src/fg_cross_median_difference.c ../kps/kp_gest10_0/mplabml/src/fg_cross_min_column.c ../kps/kp_gest10_0/mplabml/src/fg_cross_p2p_difference.c ../kps/kp_gest10_0/mplabml/src/fg_cross_peak_location_difference.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_harmonic_product_spectrum.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_mfe.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_power_spectrum.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_spectral_entropy.c ../kps/kp_gest10_0/mplabml/src/fg_stats_abs_mean.c ../kps/kp_gest10_0/mplabml/src/fg_stats_iqr.c ../kps/kp_gest10_0/mplabml/src/fg_stats_linear_regression.c ../kps/kp_gest10_0/mplabml/src/fg_stats_maximum.c ../kps/kp_gest10_0/mplabml/src/fg_stats_minimum.c ../kps/kp_gest10_0/mplabml/src/fg_stats_pct025.c ../kps/kp_gest10_0/mplabml/src/fg_stats_pct075.c ../kps/kp_gest10_0/mplabml/src/fg_stats_skewness.c ../kps/kp_gest10_0/mplabml/src/fg_stats_variance.c ../kps/kp_gest10_0/mplabml/src/fg_time_average_time_over_threshold.c ../kps/kp_gest10_0/mplabml/src/fg_time_pct_time_over_zero.c ../kps/kp_gest10_0/mplabml/src/fixlog.c ../kps/kp_gest10_0/mplabml/src/imfcc.c ../kps/kp_gest10_0/mplabml/src/kb.c ../kps/kp_gest10_0/mplabml/src/kb_output.c ../kps/kp_gest10_0/mplabml/src/kb_pipeline.c ../kps/kp_gest10_0/mplabml/src/kb_post_processing.c ../kps/kp_gest10_0/mplabml/src/max_min_high_low_freq.c ../kps/kp_gest10_0/mplabml/src/ma_symmetric.c ../kps/kp_gest10_0/mplabml/src/mean.c ../kps/kp_gest10_0/mplabml/src/ratio_diff_impl.c ../kps/kp_gest10_0/mplabml/src/rb.c ../kps/kp_gest10_0/mplabml/src/save_sensor_data.c ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_averaging.c ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_decimation.c ../kps/kp_gest10_0/mplabml/src/sg_windowing.c ../kps/kp_gest10_0/mplabml/src/sortarray.c ../kps/kp_gest10_0/mplabml/src/sorted_copy.c ../kps/kp_gest10_0/mplabml/src/stats_percentile_presorted.c ../kps/kp_gest10_0/mplabml/src/stat_mean.c ../kps/kp_gest10_0/mplabml/src/stat_moment.c ../kps/kp_gest10_0/mplabml/src/std.c ../kps/kp_gest10_0/mplabml/src/st_absolute_average.c ../kps/kp_gest10_0/mplabml/src/st_average.c ../kps/kp_gest10_0/mplabml/src/st_high_pass_filter.c ../kps/kp_gest10_0/mplabml/src/st_moving_average.c ../kps/kp_gest10_0/mplabml/src/sum.c ../kps/kp_gest10_0/mplabml/src/tree_ensemble.c ../kps/kp_gest10_0/mplabml/src/tree_ensemble_trained_models.c ../kps/kp_gest10_0/mplabml/src/tr_min_max_scale.c ../kps/kp_gest10_0/mplabml/src/tr_sensor_magnitude.c ../kps/kp_gest10_0/mplabml/src/utils_array.c ../kps/kp_gest10_0/mplabml/src/utils_array_max_uint8.c ../kps/kp_gest10_0/mplabml/src/utils_bitwise_abs_val.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_absmean.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_abssum.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_abs_max.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_argmax.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_autoscale.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_cumsum.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_max.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_mean.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_median.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_min.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_min_max.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_pass_threshold.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_std.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_variance.c ../kps/kp_gest10_0/mplabml/src/utils_model_crossing_rate.c ../kps/kp_gest10_0/mplabml/src/utils_model_cross_column.c ../kps/kp_gest10_0/mplabml/src/utils_model_cross_difference.c ../kps/kp_gest10_0/mplabml/src/utils_model_mean_crossing_rate.c ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_sigma.c ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_threshold.c ../kps/kp_gest10_0/mplabml/src/utils_model_stats_max_min.c ../kps/kp_gest10_0/mplabml/src/utils_model_total_area.c ../kps/kp_gest10_0/mplabml/src/utils_model_total_energy.c ../kps/kp_gest10_0/mplabml/src/utils_tr_sensor.c ../kps/kp_gest10_0/application/sml_recognition_run.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ${OBJECTDIR}/_ext/503204096/plib_eic.o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ${OBJECTDIR}/_ext/1580876256/plib_port.o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ${OBJECTDIR}/_ext/223004715/plib_systick.o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ${OBJECTDIR}/_ext/1832905403/initialization.o ${OBJECTDIR}/_ext/1832905403/interrupts.o ${OBJECTDIR}/_ext/1832905403/exceptions.o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/250963624/array_contains.o ${OBJECTDIR}/_ext/250963624/calc_area.o ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o ${OBJECTDIR}/_ext/250963624/crossing_rate.o ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o ${OBJECTDIR}/_ext/250963624/fftr.o ${OBJECTDIR}/_ext/250963624/fftr_utils.o ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o ${OBJECTDIR}/_ext/250963624/fixlog.o ${OBJECTDIR}/_ext/250963624/imfcc.o ${OBJECTDIR}/_ext/250963624/kb.o ${OBJECTDIR}/_ext/250963624/kb_output.o ${OBJECTDIR}/_ext/250963624/kb_pipeline.o ${OBJECTDIR}/_ext/250963624/kb_post_processing.o ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o ${OBJECTDIR}/_ext/250963624/ma_symmetric.o ${OBJECTDIR}/_ext/250963624/mean.o ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o ${OBJECTDIR}/_ext/250963624/rb.o ${OBJECTDIR}/_ext/250963624/save_sensor_data.o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/250963624/sg_windowing.o ${OBJECTDIR}/_ext/250963624/sortarray.o ${OBJECTDIR}/_ext/250963624/sorted_copy.o ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o ${OBJECTDIR}/_ext/250963624/stat_mean.o ${OBJECTDIR}/_ext/250963624/stat_moment.o ${OBJECTDIR}/_ext/250963624/std.o ${OBJECTDIR}/_ext/250963624/st_absolute_average.o ${OBJECTDIR}/_ext/250963624/st_average.o ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o ${OBJECTDIR}/_ext/250963624/st_moving_average.o ${OBJECTDIR}/_ext/250963624/sum.o ${OBJECTDIR}/_ext/250963624/tree_ensemble.o ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o ${OBJECTDIR}/_ext/250963624/utils_array.o ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o.d ${OBJECTDIR}/_ext/1750425231/plib_clock.o.d ${OBJECTDIR}/_ext/503204096/plib_eic.o.d ${OBJECTDIR}/_ext/1752574717/plib_evsys.o.d ${OBJECTDIR}/_ext/1580823105/plib_nvic.o.d ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1580876256/plib_port.o.d ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o.d ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/223004715/plib_systick.o.d ${OBJECTDIR}/_ext/399410062/plib_tc3.o.d ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832905403/initialization.o.d ${OBJECTDIR}/_ext/1832905403/interrupts.o.d ${OBJECTDIR}/_ext/1832905403/exceptions.o.d ${OBJECTDIR}/_ext/1832905403/startup_xc32.o.d ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d ${OBJECTDIR}/_ext/250963624/array_contains.o.d ${OBJECTDIR}/_ext/250963624/calc_area.o.d ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o.d ${OBJECTDIR}/_ext/250963624/crossing_rate.o.d ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o.d ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o.d ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o.d ${OBJECTDIR}/_ext/250963624/fftr.o.d ${OBJECTDIR}/_ext/250963624/fftr_utils.o.d ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o.d ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o.d ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o.d ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o.d ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o.d ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o.d ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o.d ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o.d ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o.d ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o.d ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o.d ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o.d ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o.d ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o.d ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o.d ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o.d ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o.d ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o.d ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o.d ${OBJECTDIR}/_ext/250963624/fixlog.o.d ${OBJECTDIR}/_ext/250963624/imfcc.o.d ${OBJECTDIR}/_ext/250963624/kb.o.d ${OBJECTDIR}/_ext/250963624/kb_output.o.d ${OBJECTDIR}/_ext/250963624/kb_pipeline.o.d ${OBJECTDIR}/_ext/250963624/kb_post_processing.o.d ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o.d ${OBJECTDIR}/_ext/250963624/ma_symmetric.o.d ${OBJECTDIR}/_ext/250963624/mean.o.d ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o.d ${OBJECTDIR}/_ext/250963624/rb.o.d ${OBJECTDIR}/_ext/250963624/save_sensor_data.o.d ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o.d ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o.d ${OBJECTDIR}/_ext/250963624/sg_windowing.o.d ${OBJECTDIR}/_ext/250963624/sortarray.o.d ${OBJECTDIR}/_ext/250963624/sorted_copy.o.d ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o.d ${OBJECTDIR}/_ext/250963624/stat_mean.o.d ${OBJECTDIR}/_ext/250963624/stat_moment.o.d ${OBJECTDIR}/_ext/250963624/std.o.d ${OBJECTDIR}/_ext/250963624/st_absolute_average.o.d ${OBJECTDIR}/_ext/250963624/st_average.o.d ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o.d ${OBJECTDIR}/_ext/250963624/st_moving_average.o.d ${OBJECTDIR}/_ext/250963624/sum.o.d ${OBJECTDIR}/_ext/250963624/tree_ensemble.o.d ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o.d ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o.d ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o.d ${OBJECTDIR}/_ext/250963624/utils_array.o.d ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o.d ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o.d ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o.d ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o.d ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o.d ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o.d ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o.d ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o.d ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o.d ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o.d ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o.d ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o.d ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o.d ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ${OBJECTDIR}/_ext/503204096/plib_eic.o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ${OBJECTDIR}/_ext/1580876256/plib_port.o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ${OBJECTDIR}/_ext/223004715/plib_systick.o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ${OBJECTDIR}/_ext/1832905403/initialization.o ${OBJECTDIR}/_ext/1832905403/interrupts.o ${OBJECTDIR}/_ext/1832905403/exceptions.o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/250963624/array_contains.o ${OBJECTDIR}/_ext/250963624/calc_area.o ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o ${OBJECTDIR}/_ext/250963624/crossing_rate.o ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o ${OBJECTDIR}/_ext/250963624/fftr.o ${OBJECTDIR}/_ext/250963624/fftr_utils.o ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o ${OBJECTDIR}/_ext/250963624/fixlog.o ${OBJECTDIR}/_ext/250963624/imfcc.o ${OBJECTDIR}/_ext/250963624/kb.o ${OBJECTDIR}/_ext/250963624/kb_output.o ${OBJECTDIR}/_ext/250963624/kb_pipeline.o ${OBJECTDIR}/_ext/250963624/kb_post_processing.o ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o ${OBJECTDIR}/_ext/250963624/ma_symmetric.o ${OBJECTDIR}/_ext/250963624/mean.o ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o ${OBJECTDIR}/_ext/250963624/rb.o ${OBJECTDIR}/_ext/250963624/save_sensor_data.o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/250963624/sg_windowing.o ${OBJECTDIR}/_ext/250963624/sortarray.o ${OBJECTDIR}/_ext/250963624/sorted_copy.o ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o ${OBJECTDIR}/_ext/250963624/stat_mean.o ${OBJECTDIR}/_ext/250963624/stat_moment.o ${OBJECTDIR}/_ext/250963624/std.o ${OBJECTDIR}/_ext/250963624/st_absolute_average.o ${OBJECTDIR}/_ext/250963624/st_average.o ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o ${OBJECTDIR}/_ext/250963624/st_moving_average.o ${OBJECTDIR}/_ext/250963624/sum.o ${OBJECTDIR}/_ext/250963624/tree_ensemble.o ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o ${OBJECTDIR}/_ext/250963624/utils_array.o ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o

# Source Files
SOURCEFILES=../src/app_config/icm42688/icm42688_sensor.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c ../Icm426xx/Icm426xxDriver_HL.c ../Icm426xx/Icm426xxDriver_HL_apex.c ../Icm426xx/Icm426xxSelfTest.c ../Icm426xx/Icm426xxTransport.c ../src/main.c ../src/ringbuffer.c ../kps/kp_gest10_0/mplabml/src/array_contains.c ../kps/kp_gest10_0/mplabml/src/calc_area.c ../kps/kp_gest10_0/mplabml/src/column_to_row_complex.c ../kps/kp_gest10_0/mplabml/src/crossing_rate.c ../kps/kp_gest10_0/mplabml/src/dsp_dtw_distance.c ../kps/kp_gest10_0/mplabml/src/dsp_l1_distance.c ../kps/kp_gest10_0/mplabml/src/dsp_lsup_distance.c ../kps/kp_gest10_0/mplabml/src/fftr.c ../kps/kp_gest10_0/mplabml/src/fftr_utils.c ../kps/kp_gest10_0/mplabml/src/fg_amplitude_global_p2p_low_frequency.c ../kps/kp_gest10_0/mplabml/src/fg_amplitude_peak_to_peak.c ../kps/kp_gest10_0/mplabml/src/fg_area_absolute_area_low_frequency.c ../kps/kp_gest10_0/mplabml/src/fg_area_power_spectrum_density.c ../kps/kp_gest10_0/mplabml/src/fg_area_total_area.c ../kps/kp_gest10_0/mplabml/src/fg_area_total_area_low_frequency.c ../kps/kp_gest10_0/mplabml/src/fg_cross_max_column.c ../kps/kp_gest10_0/mplabml/src/fg_cross_mean_difference.c ../kps/kp_gest10_0/mplabml/src/fg_cross_median_difference.c ../kps/kp_gest10_0/mplabml/src/fg_cross_min_column.c ../kps/kp_gest10_0/mplabml/src/fg_cross_p2p_difference.c ../kps/kp_gest10_0/mplabml/src/fg_cross_peak_location_difference.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_harmonic_product_spectrum.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_mfe.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_power_spectrum.c ../kps/kp_gest10_0/mplabml/src/fg_frequency_spectral_entropy.c ../kps/kp_gest10_0/mplabml/src/fg_stats_abs_mean.c ../kps/kp_gest10_0/mplabml/src/fg_stats_iqr.c ../kps/kp_gest10_0/mplabml/src/fg_stats_linear_regression.c ../kps/kp_gest10_0/mplabml/src/fg_stats_maximum.c ../kps/kp_gest10_0/mplabml/src/fg_stats_minimum.c ../kps/kp_gest10_0/mplabml/src/fg_stats_pct025.c ../kps/kp_gest10_0/mplabml/src/fg_stats_pct075.c ../kps/kp_gest10_0/mplabml/src/fg_stats_skewness.c ../kps/kp_gest10_0/mplabml/src/fg_stats_variance.c ../kps/kp_gest10_0/mplabml/src/fg_time_average_time_over_threshold.c ../kps/kp_gest10_0/mplabml/src/fg_time_pct_time_over_zero.c ../kps/kp_gest10_0/mplabml/src/fixlog.c ../kps/kp_gest10_0/mplabml/src/imfcc.c ../kps/kp_gest10_0/mplabml/src/kb.c ../kps/kp_gest10_0/mplabml/src/kb_output.c ../kps/kp_gest10_0/mplabml/src/kb_pipeline.c ../kps/kp_gest10_0/mplabml/src/kb_post_processing.c ../kps/kp_gest10_0/mplabml/src/max_min_high_low_freq.c ../kps/kp_gest10_0/mplabml/src/ma_symmetric.c ../kps/kp_gest10_0/mplabml/src/mean.c ../kps/kp_gest10_0/mplabml/src/ratio_diff_impl.c ../kps/kp_gest10_0/mplabml/src/rb.c ../kps/kp_gest10_0/mplabml/src/save_sensor_data.c ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_averaging.c ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_decimation.c ../kps/kp_gest10_0/mplabml/src/sg_windowing.c ../kps/kp_gest10_0/mplabml/src/sortarray.c ../kps/kp_gest10_0/mplabml/src/sorted_copy.c ../kps/kp_gest10_0/mplabml/src/stats_percentile_presorted.c ../kps/kp_gest10_0/mplabml/src/stat_mean.c ../kps/kp_gest10_0/mplabml/src/stat_moment.c ../kps/kp_gest10_0/mplabml/src/std.c ../kps/kp_gest10_0/mplabml/src/st_absolute_average.c ../kps/kp_gest10_0/mplabml/src/st_average.c ../kps/kp_gest10_0/mplabml/src/st_high_pass_filter.c ../kps/kp_gest10_0/mplabml/src/st_moving_average.c ../kps/kp_gest10_0/mplabml/src/sum.c ../kps/kp_gest10_0/mplabml/src/tree_ensemble.c ../kps/kp_gest10_0/mplabml/src/tree_ensemble_trained_models.c ../kps/kp_gest10_0/mplabml/src/tr_min_max_scale.c ../kps/kp_gest10_0/mplabml/src/tr_sensor_magnitude.c ../kps/kp_gest10_0/mplabml/src/utils_array.c ../kps/kp_gest10_0/mplabml/src/utils_array_max_uint8.c ../kps/kp_gest10_0/mplabml/src/utils_bitwise_abs_val.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_absmean.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_abssum.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_abs_max.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_argmax.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_autoscale.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_cumsum.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_max.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_mean.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_median.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_min.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_min_max.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_pass_threshold.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_std.c ../kps/kp_gest10_0/mplabml/src/utils_buffer_variance.c ../kps/kp_gest10_0/mplabml/src/utils_model_crossing_rate.c ../kps/kp_gest10_0/mplabml/src/utils_model_cross_column.c ../kps/kp_gest10_0/mplabml/src/utils_model_cross_difference.c ../kps/kp_gest10_0/mplabml/src/utils_model_mean_crossing_rate.c ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_sigma.c ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_threshold.c ../kps/kp_gest10_0/mplabml/src/utils_model_stats_max_min.c ../kps/kp_gest10_0/mplabml/src/utils_model_total_area.c ../kps/kp_gest10_0/mplabml/src/utils_model_total_energy.c ../kps/kp_gest10_0/mplabml/src/utils_tr_sensor.c ../kps/kp_gest10_0/application/sml_recognition_run.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-SAMD21_IOT_WG_ICM42688.mk ${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\SAMD21_IOT_WG_ICM42688\ATSAMD21G18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o: ../src/app_config/icm42688/icm42688_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2c64a69e4950846755bdd766014f186d1069bc9a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2048461350" 
	@${RM} ${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o.d" -o ${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ../src/app_config/icm42688/icm42688_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1750425231/plib_clock.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5ae5edbd6260fca5f7bce0fd0384f7210608c516 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1750425231" 
	@${RM} ${OBJECTDIR}/_ext/1750425231/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750425231/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1750425231/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/503204096/plib_eic.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/529680440fdffc4c8fb7130bf053745871e273ff .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503204096" 
	@${RM} ${OBJECTDIR}/_ext/503204096/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/503204096/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/503204096/plib_eic.o.d" -o ${OBJECTDIR}/_ext/503204096/plib_eic.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1752574717/plib_evsys.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c59c8f6c4ccece0e373113b15777fca6c5e3b201 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1752574717" 
	@${RM} ${OBJECTDIR}/_ext/1752574717/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1752574717/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1752574717/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1580823105/plib_nvic.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2b8beab17f39a418eca460004528d816cee98409 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1580823105" 
	@${RM} ${OBJECTDIR}/_ext/1580823105/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580823105/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1580823105/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7a64290c0f9828e59871c6ae1afab7040a0b0e7f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/11470383" 
	@${RM} ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1580876256/plib_port.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/695347b0083679f8a8c38fc2181a63d62766a3b8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1580876256" 
	@${RM} ${OBJECTDIR}/_ext/1580876256/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580876256/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1580876256/plib_port.o.d" -o ${OBJECTDIR}/_ext/1580876256/plib_port.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/edacbc9d0e5568aa378036bd641c3f607b7374e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014017276" 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o.d" -o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ee4151ff1c1bc46a779d6396806dc14433428640 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/177673482" 
	@${RM} ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/223004715/plib_systick.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2f79404647c6b9fb1da3e8b1b3630531b83613d5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/223004715" 
	@${RM} ${OBJECTDIR}/_ext/223004715/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/223004715/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/223004715/plib_systick.o.d" -o ${OBJECTDIR}/_ext/223004715/plib_systick.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399410062/plib_tc3.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c80d985cb4a57601b348ba2de4f0b1cd9361dc4a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/399410062" 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399410062/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1357625803/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b98d087cab21670e59764cb8473830a33ac0ce70 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1357625803" 
	@${RM} ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1357625803/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/initialization.o: ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a0f5268120a309950f23868d38a512ef5a7de36f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/initialization.o.d" -o ${OBJECTDIR}/_ext/1832905403/initialization.o ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/interrupts.o: ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a9eeadaebf4431695bb063ad21f60118076a48ae .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/interrupts.o.d" -o ${OBJECTDIR}/_ext/1832905403/interrupts.o ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/exceptions.o: ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/791dda2b305d72d57f88671062f1d880ffbac0ed .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/exceptions.o.d" -o ${OBJECTDIR}/_ext/1832905403/exceptions.o ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/startup_xc32.o: ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e2809acdb62c526fd22752bc8530cd9e5bbacc3e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9f7be429021af4a52c23f3ec2e35d667e0f0c725 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o: ../Icm426xx/Icm426xxDriver_HL.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e7834e20c6cf921c7b3fd35c6f1055a6e8cc160f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ../Icm426xx/Icm426xxDriver_HL.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o: ../Icm426xx/Icm426xxDriver_HL_apex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/905dc925f76bca57e103f47b4b6957ebd0d64157 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ../Icm426xx/Icm426xxDriver_HL_apex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o: ../Icm426xx/Icm426xxSelfTest.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/26a1b1eb28ef2ae103055faaf403419d3797595e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ../Icm426xx/Icm426xxSelfTest.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o: ../Icm426xx/Icm426xxTransport.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4d9cad2035110462021a1fd467c7e3c3562984a1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ../Icm426xx/Icm426xxTransport.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e274b067c41f1156011416f96fdaac271276013f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2917cc442ff55186af261fd853e8c2c17a430ff8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/array_contains.o: ../kps/kp_gest10_0/mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/212f227056a65940b1ad1573c886ed8020f11a82 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/array_contains.o.d" -o ${OBJECTDIR}/_ext/250963624/array_contains.o ../kps/kp_gest10_0/mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/calc_area.o: ../kps/kp_gest10_0/mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6fd75999f28bbf1d78ea2c8906c8049f6b82ef1d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/calc_area.o.d" -o ${OBJECTDIR}/_ext/250963624/calc_area.o ../kps/kp_gest10_0/mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/column_to_row_complex.o: ../kps/kp_gest10_0/mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1478dc2ac0ed70a9bb56db8c345d4c778c73290d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o ../kps/kp_gest10_0/mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/crossing_rate.o: ../kps/kp_gest10_0/mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/da0b7add03858e50fd427d9d3498a50980646e49 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/250963624/crossing_rate.o ../kps/kp_gest10_0/mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o: ../kps/kp_gest10_0/mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c6610d45e18d586f61f1f0ada91d82a4c9c48541 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o ../kps/kp_gest10_0/mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o: ../kps/kp_gest10_0/mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b4eb4379c3a35ea7774be0814486500719194057 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o ../kps/kp_gest10_0/mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o: ../kps/kp_gest10_0/mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a533159507fdba059aff7ff47f5ef93349915369 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o ../kps/kp_gest10_0/mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fftr.o: ../kps/kp_gest10_0/mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6bce9f06c9124e6b523cc346f75d6b1f48f754fb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fftr.o.d" -o ${OBJECTDIR}/_ext/250963624/fftr.o ../kps/kp_gest10_0/mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fftr_utils.o: ../kps/kp_gest10_0/mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4bde78878d84bc945ad58ae50a6355be7341cd75 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/250963624/fftr_utils.o ../kps/kp_gest10_0/mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o: ../kps/kp_gest10_0/mplabml/src/fg_amplitude_global_p2p_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/43a8613a8d29f715ae849ce21f6018cd04690371 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o ../kps/kp_gest10_0/mplabml/src/fg_amplitude_global_p2p_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o: ../kps/kp_gest10_0/mplabml/src/fg_amplitude_peak_to_peak.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1330800a23e3865c40b0290577367033744a0d24 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o ../kps/kp_gest10_0/mplabml/src/fg_amplitude_peak_to_peak.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o: ../kps/kp_gest10_0/mplabml/src/fg_area_absolute_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b85e92ec7e8507c7d39c380b898a199b82e58325 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o ../kps/kp_gest10_0/mplabml/src/fg_area_absolute_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o: ../kps/kp_gest10_0/mplabml/src/fg_area_power_spectrum_density.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e50cf249302361fa6f6794c85b9c22b65515ad37 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o ../kps/kp_gest10_0/mplabml/src/fg_area_power_spectrum_density.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_total_area.o: ../kps/kp_gest10_0/mplabml/src/fg_area_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6f841ac3e11a3a65d37e6c0c578b442079acad0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_total_area.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o ../kps/kp_gest10_0/mplabml/src/fg_area_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o: ../kps/kp_gest10_0/mplabml/src/fg_area_total_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c9be1026add74a24a3dde04637717e221dc7916b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o ../kps/kp_gest10_0/mplabml/src/fg_area_total_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_max_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/902c3b248263666306dcf9cac5b364f66650c5e6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o ../kps/kp_gest10_0/mplabml/src/fg_cross_max_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_mean_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fe10d1acdd10a5f0dc3c87f41041924e5b62eb6f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_mean_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_median_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/265928f9c6f679f6678462e271850b8c224cfc56 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_median_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_min_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7a2aa3e235bba3d7ec3a294928c9c45e7a963ac1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o ../kps/kp_gest10_0/mplabml/src/fg_cross_min_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_p2p_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3b5b8287c11824cacd8e9842536010c796f2f449 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_p2p_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_peak_location_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9c0d7418b132337a18bcea19711198425ca21f78 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_peak_location_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_harmonic_product_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1bb5bffdb3319d22629bfbace817a9dae18a659e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_harmonic_product_spectrum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3154b7a3b75606a8aa97e5cd8870eb577655aaef .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6cb5ee14200e4402e5d99d45bb728eafaa15f757 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_spectral_entropy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8ac446890fd564c0e9638e229dc8bbf2ccf49b0e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_spectral_entropy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_abs_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/29e74b37c769d533cb4f42ccd75d0b608c52eb2f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o ../kps/kp_gest10_0/mplabml/src/fg_stats_abs_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_iqr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/45351857b9154ad1bc28780f54e24089c224c1d7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o ../kps/kp_gest10_0/mplabml/src/fg_stats_iqr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_linear_regression.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7d560e2349d70cc284eff433f74d1d8a0c28f7d9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o ../kps/kp_gest10_0/mplabml/src/fg_stats_linear_regression.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_maximum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/51df8e3ee9e5d01b2c4ed00d31671314e77e17c9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o ../kps/kp_gest10_0/mplabml/src/fg_stats_maximum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_minimum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9b0e54b306f271f4eb63099c3ecc72b16d6aa74c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o ../kps/kp_gest10_0/mplabml/src/fg_stats_minimum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_pct025.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ec566058318eeea5e365173a7f98771e59bd4239 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o ../kps/kp_gest10_0/mplabml/src/fg_stats_pct025.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_pct075.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/371762435684872b9239974528bf4bdc1940323c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o ../kps/kp_gest10_0/mplabml/src/fg_stats_pct075.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_skewness.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/36645d6ac242b1eafaa7481c2654b51e2b40527a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o ../kps/kp_gest10_0/mplabml/src/fg_stats_skewness.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_variance.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ae7e4669799742800af3c3cf8a2fd5d7bcd776c3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_variance.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o ../kps/kp_gest10_0/mplabml/src/fg_stats_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o: ../kps/kp_gest10_0/mplabml/src/fg_time_average_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6519473500a5dad126f23830ced170d88548b677 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o ../kps/kp_gest10_0/mplabml/src/fg_time_average_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o: ../kps/kp_gest10_0/mplabml/src/fg_time_pct_time_over_zero.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4953e71d82dc4ff2dc8ee182ac271addc2e63748 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o ../kps/kp_gest10_0/mplabml/src/fg_time_pct_time_over_zero.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fixlog.o: ../kps/kp_gest10_0/mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/156b8f4c34b10c05264cf4aa77912d7fd242dcc2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fixlog.o.d" -o ${OBJECTDIR}/_ext/250963624/fixlog.o ../kps/kp_gest10_0/mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/imfcc.o: ../kps/kp_gest10_0/mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/958ed9225b8bf8e3d8ffc04a0a91df3e10a91726 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/imfcc.o.d" -o ${OBJECTDIR}/_ext/250963624/imfcc.o ../kps/kp_gest10_0/mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb.o: ../kps/kp_gest10_0/mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5bbe91c3a7d72d1e1fc66929b60cbc5b256cc571 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb.o.d" -o ${OBJECTDIR}/_ext/250963624/kb.o ../kps/kp_gest10_0/mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb_output.o: ../kps/kp_gest10_0/mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fe5d3cfd8c9f2ef5f636069f0df3d2e60120f516 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb_output.o.d" -o ${OBJECTDIR}/_ext/250963624/kb_output.o ../kps/kp_gest10_0/mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb_pipeline.o: ../kps/kp_gest10_0/mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c58b181548800b1363da2da403416a19e967b159 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/250963624/kb_pipeline.o ../kps/kp_gest10_0/mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb_post_processing.o: ../kps/kp_gest10_0/mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/769205ba2afa217a438e9a1f6b084cff0428dce9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/250963624/kb_post_processing.o ../kps/kp_gest10_0/mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o: ../kps/kp_gest10_0/mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fcc14df19d170dfd35ee489d60185873c8b21007 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o ../kps/kp_gest10_0/mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/ma_symmetric.o: ../kps/kp_gest10_0/mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/de28a78dc17ff0415dea8f2e690031b49743bd9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/250963624/ma_symmetric.o ../kps/kp_gest10_0/mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/mean.o: ../kps/kp_gest10_0/mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9bdc64623049a78a7fdda4af6f5478b1c5440d6e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/mean.o.d" -o ${OBJECTDIR}/_ext/250963624/mean.o ../kps/kp_gest10_0/mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o: ../kps/kp_gest10_0/mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/96326c493ba3e32ff59fa7d1b40f45459df70c6e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o ../kps/kp_gest10_0/mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/rb.o: ../kps/kp_gest10_0/mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/cc9b3550de78bb82178936963421b6c5d8b3c68c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/rb.o.d" -o ${OBJECTDIR}/_ext/250963624/rb.o ../kps/kp_gest10_0/mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/save_sensor_data.o: ../kps/kp_gest10_0/mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3225e1a6a12e46126b3e8245b396feb117bd188b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/250963624/save_sensor_data.o ../kps/kp_gest10_0/mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o: ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/eee3a837a905f8f79f2ee2e330998e07d4969f16 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o: ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d07b8023134a3dd82efc608b11136693c72d6a35 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sg_windowing.o: ../kps/kp_gest10_0/mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/28361e015c1c6320454b85335c97fbf982f84f55 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/250963624/sg_windowing.o ../kps/kp_gest10_0/mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sortarray.o: ../kps/kp_gest10_0/mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ae2e8cde769ff92cfbd54fe4121517977354628a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sortarray.o.d" -o ${OBJECTDIR}/_ext/250963624/sortarray.o ../kps/kp_gest10_0/mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sorted_copy.o: ../kps/kp_gest10_0/mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7f5bdaa7990cfa6a6bae2f978e73e4d14f0fe352 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/250963624/sorted_copy.o ../kps/kp_gest10_0/mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o: ../kps/kp_gest10_0/mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/27aeca91408ceb733ba0566f76dc82dd8c88e50e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o ../kps/kp_gest10_0/mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/stat_mean.o: ../kps/kp_gest10_0/mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ebdc99715c84339d825e5a916bcf6824ae128a56 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/stat_mean.o.d" -o ${OBJECTDIR}/_ext/250963624/stat_mean.o ../kps/kp_gest10_0/mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/stat_moment.o: ../kps/kp_gest10_0/mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/eae59fde29281db7dde3e0c7be1e610a14987b36 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/stat_moment.o.d" -o ${OBJECTDIR}/_ext/250963624/stat_moment.o ../kps/kp_gest10_0/mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/std.o: ../kps/kp_gest10_0/mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/62e927f9b140d6ac334394ab4f57bea6c667d8cf .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/std.o.d" -o ${OBJECTDIR}/_ext/250963624/std.o ../kps/kp_gest10_0/mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_absolute_average.o: ../kps/kp_gest10_0/mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8ad177cda85a8f0b52b9e15aca1a51cd4a7edfb2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/250963624/st_absolute_average.o ../kps/kp_gest10_0/mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_average.o: ../kps/kp_gest10_0/mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5764549862183d3f85ab5f89a81c8461821e8d93 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_average.o.d" -o ${OBJECTDIR}/_ext/250963624/st_average.o ../kps/kp_gest10_0/mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o: ../kps/kp_gest10_0/mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1e55ba229d700fe1693c017300ff84dd6a093213 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o ../kps/kp_gest10_0/mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_moving_average.o: ../kps/kp_gest10_0/mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/689890a74b089ef99c5a1a51d4f3458c9212f96a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/250963624/st_moving_average.o ../kps/kp_gest10_0/mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sum.o: ../kps/kp_gest10_0/mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e99b59a0eeb9bf434049abab6a468f62be8eac61 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sum.o.d" -o ${OBJECTDIR}/_ext/250963624/sum.o ../kps/kp_gest10_0/mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tree_ensemble.o: ../kps/kp_gest10_0/mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c653d27c12c3454a8f0f4568185db3ed19820a3a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/250963624/tree_ensemble.o ../kps/kp_gest10_0/mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o: ../kps/kp_gest10_0/mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6af9e2f487dc15f8259d9e05424921e34bb2f1cb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o ../kps/kp_gest10_0/mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o: ../kps/kp_gest10_0/mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5456f777d18a17d31d2bac2808019518f89c119b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o ../kps/kp_gest10_0/mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o: ../kps/kp_gest10_0/mplabml/src/tr_sensor_magnitude.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5c18d63bf46c2ea11210bb3ec4ca5c27e488a14f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o.d" -o ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o ../kps/kp_gest10_0/mplabml/src/tr_sensor_magnitude.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_array.o: ../kps/kp_gest10_0/mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bcad3d51c5d58c68af062fbb5111402586c0372 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_array.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_array.o ../kps/kp_gest10_0/mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o: ../kps/kp_gest10_0/mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1d7fd1deb91ae345d839d779b39a2bfb86edc0dd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o ../kps/kp_gest10_0/mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o: ../kps/kp_gest10_0/mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1e586246772ad2d79ec024352332b99926f56ead .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o ../kps/kp_gest10_0/mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e5d4961a24f89844a718ac0047316e087ed9c34 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/61c74af8a9b211320290249fac1624c6df2fd42c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1054f6cf54af3950ad7e9618b7ed66ccc794ccdf .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/97f16dba270e7e34afd0634139fe5e72990d05ef .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7028808c0dedd8598fac4e213b4850e3b62faba .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a2720583811dc9a3b272000230393e8e48bdaabb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_max.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8127d5d8e244d1fed1c847d6a8e3dfe63d499829 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b5b24fbb8409c4dd33681ef07c2e051f5e444020 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_median.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4d7618754bfa0b4b93325f263a3975932bd73c67 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_min.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6319b2a55ca884c90b6fecb8a95563a1a215a8e8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6b5507143a9e42be6e6452c6a55f3a248a40c48e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d3c5a77003d4dd5de8dad9a0ea92a76e6940713a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_std.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6c8cfae05685d9eca5ca6afd829bd02df91a9970 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e5a2d37c5e0effe91ab5fc6b91a5185cdae10c06 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o: ../kps/kp_gest10_0/mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c46decbafd8843192d828fe6eef6cf524c7215b0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o ../kps/kp_gest10_0/mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o: ../kps/kp_gest10_0/mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4e7d2cc4ec639f3e593f8da2c603eb0fab9da83b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o ../kps/kp_gest10_0/mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o: ../kps/kp_gest10_0/mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ae192a39a19b1c4a9e13cb60911dd4bcd6dd8067 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o ../kps/kp_gest10_0/mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o: ../kps/kp_gest10_0/mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/31d884c223a1566de7bdcfeea740d9b1e2931f5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o ../kps/kp_gest10_0/mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o: ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/13da1364d408ef3eec03c4e230f91f6e1bab1dd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o: ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a2b332356abef4271173826f93e4aaac0d430012 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o: ../kps/kp_gest10_0/mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b86412398c928700f40146f2604e72d4bea529f1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o ../kps/kp_gest10_0/mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_total_area.o: ../kps/kp_gest10_0/mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/55be12da9fabe2b6f97fdf53a5c3fe79223326a5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o ../kps/kp_gest10_0/mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o: ../kps/kp_gest10_0/mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f74fe50a3246e1b46dda56b843bc52d8430454de .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o ../kps/kp_gest10_0/mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o: ../kps/kp_gest10_0/mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/573f6d40bd9e9fa5727f4e68a0d140f583c7971 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o ../kps/kp_gest10_0/mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o: ../kps/kp_gest10_0/application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/aca2e41c5b0842e2a37bfd06c465d6f6f699e32c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1018891514" 
	@${RM} ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o ../kps/kp_gest10_0/application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o: ../src/app_config/icm42688/icm42688_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3565f5373f8fecd522d05f9b6c242d613d0302d1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2048461350" 
	@${RM} ${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o.d" -o ${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ../src/app_config/icm42688/icm42688_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1750425231/plib_clock.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/87f6ffc4324f71bc0289459b974e412f7c016944 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1750425231" 
	@${RM} ${OBJECTDIR}/_ext/1750425231/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750425231/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1750425231/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/503204096/plib_eic.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/cded54c06ed712bad6f9a54c466abc600113eb88 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503204096" 
	@${RM} ${OBJECTDIR}/_ext/503204096/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/503204096/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/503204096/plib_eic.o.d" -o ${OBJECTDIR}/_ext/503204096/plib_eic.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1752574717/plib_evsys.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/696e7d6b01b63af06eb85e4815623f28fe4d9cd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1752574717" 
	@${RM} ${OBJECTDIR}/_ext/1752574717/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1752574717/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1752574717/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1580823105/plib_nvic.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8187b6f48e42dbc7225d5d3e2b249fa065422230 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1580823105" 
	@${RM} ${OBJECTDIR}/_ext/1580823105/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580823105/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1580823105/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e8241ffa96206c58569a1f6f6951f5b9a34af29d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/11470383" 
	@${RM} ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1580876256/plib_port.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/15a70312e72ed624dedd2b0ae7ca23194d14af7f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1580876256" 
	@${RM} ${OBJECTDIR}/_ext/1580876256/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580876256/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1580876256/plib_port.o.d" -o ${OBJECTDIR}/_ext/1580876256/plib_port.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1b147ae7b8760bbd14f9757fd7b887d441f93f0b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014017276" 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o.d" -o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/634b98c37d7016dfae4c010ac87f68273ec2681a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/177673482" 
	@${RM} ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/223004715/plib_systick.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e0ee83f70deb3c9326275a75bf73a3a383449aff .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/223004715" 
	@${RM} ${OBJECTDIR}/_ext/223004715/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/223004715/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/223004715/plib_systick.o.d" -o ${OBJECTDIR}/_ext/223004715/plib_systick.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399410062/plib_tc3.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/203990c8f9345d9da3a3bcb3da3bbe73d793474 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/399410062" 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399410062/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1357625803/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/36c3c55340426b884961fa4bf0e23580786adfa8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1357625803" 
	@${RM} ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1357625803/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/initialization.o: ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/358e94dbe58ee1781576212a7c44484b40a03614 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/initialization.o.d" -o ${OBJECTDIR}/_ext/1832905403/initialization.o ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/interrupts.o: ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/98700b0dba6a49d0488b8db9f364bdd83b6d6821 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/interrupts.o.d" -o ${OBJECTDIR}/_ext/1832905403/interrupts.o ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/exceptions.o: ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f9906ee6f0e00a9d7238919bf3ca36f665b3b2ed .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/exceptions.o.d" -o ${OBJECTDIR}/_ext/1832905403/exceptions.o ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/startup_xc32.o: ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fe4e0cf87aa8f250a17226f245a9204ad24ffd8d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/360894b4256bba766ee3fc0baad05790363edded .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o: ../Icm426xx/Icm426xxDriver_HL.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/83819966bc4b74a50e74ccd411e912ea24822435 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ../Icm426xx/Icm426xxDriver_HL.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o: ../Icm426xx/Icm426xxDriver_HL_apex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/cb92c834444cb8261d4f934198e438adc23e8d50 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ../Icm426xx/Icm426xxDriver_HL_apex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o: ../Icm426xx/Icm426xxSelfTest.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4c07152a9ada07a5dc6ae03a535fceaf5cd54a94 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ../Icm426xx/Icm426xxSelfTest.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o: ../Icm426xx/Icm426xxTransport.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a26eaeff8274b4898dc38fb5c8a57227f3308f95 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1341251756" 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o.d" -o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ../Icm426xx/Icm426xxTransport.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d667130fdd3eb201bed298d1c86b9a31ef36dd03 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c12e9250ace5664a380756b46789a2df621dc097 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/array_contains.o: ../kps/kp_gest10_0/mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2fff0d4257a1c2ed2b3ce6456ba6b11480c1ad66 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/array_contains.o.d" -o ${OBJECTDIR}/_ext/250963624/array_contains.o ../kps/kp_gest10_0/mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/calc_area.o: ../kps/kp_gest10_0/mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9776d21a435d9a1e3b029a87b95502e65cd71fcf .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/calc_area.o.d" -o ${OBJECTDIR}/_ext/250963624/calc_area.o ../kps/kp_gest10_0/mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/column_to_row_complex.o: ../kps/kp_gest10_0/mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ac5f623418a014945383f9e4ddee1570f19fe3b0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/250963624/column_to_row_complex.o ../kps/kp_gest10_0/mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/crossing_rate.o: ../kps/kp_gest10_0/mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1f3361f654d19eb7661c7eed98ea071e14594ce5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/250963624/crossing_rate.o ../kps/kp_gest10_0/mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o: ../kps/kp_gest10_0/mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f66d7befba0ac81a5cafd870d22e8d8229eebf95 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/250963624/dsp_dtw_distance.o ../kps/kp_gest10_0/mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o: ../kps/kp_gest10_0/mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bc42d040881d977a1e785df7d82760c0f4fccc8d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/250963624/dsp_l1_distance.o ../kps/kp_gest10_0/mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o: ../kps/kp_gest10_0/mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7c5b4d88abc2a4d1e90e18fe64a5d75e56b56179 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/250963624/dsp_lsup_distance.o ../kps/kp_gest10_0/mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fftr.o: ../kps/kp_gest10_0/mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5d6d29748f31172647297f239f27bc8d6ffe9dd4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fftr.o.d" -o ${OBJECTDIR}/_ext/250963624/fftr.o ../kps/kp_gest10_0/mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fftr_utils.o: ../kps/kp_gest10_0/mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/49abe7ae19ec27c44f06d3ed5c49b02be27b9275 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/250963624/fftr_utils.o ../kps/kp_gest10_0/mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o: ../kps/kp_gest10_0/mplabml/src/fg_amplitude_global_p2p_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c75f32866d0c87f5e04a1e2f68c458dbd65e707f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_amplitude_global_p2p_low_frequency.o ../kps/kp_gest10_0/mplabml/src/fg_amplitude_global_p2p_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o: ../kps/kp_gest10_0/mplabml/src/fg_amplitude_peak_to_peak.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8b5910785ef3357aa861d41e76a7a797ac808b90 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_amplitude_peak_to_peak.o ../kps/kp_gest10_0/mplabml/src/fg_amplitude_peak_to_peak.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o: ../kps/kp_gest10_0/mplabml/src/fg_area_absolute_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7585c8e28c333009c13f4c2c3f2d1d6f2d4df6d1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_absolute_area_low_frequency.o ../kps/kp_gest10_0/mplabml/src/fg_area_absolute_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o: ../kps/kp_gest10_0/mplabml/src/fg_area_power_spectrum_density.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/68fc01d43b0eb463129ff910e7a7b7ba9086e947 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_power_spectrum_density.o ../kps/kp_gest10_0/mplabml/src/fg_area_power_spectrum_density.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_total_area.o: ../kps/kp_gest10_0/mplabml/src/fg_area_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2dca5167d99a924f06da91d51f1bc01c5c4e50c8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_total_area.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_total_area.o ../kps/kp_gest10_0/mplabml/src/fg_area_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o: ../kps/kp_gest10_0/mplabml/src/fg_area_total_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/860484c4e613d2add74953d1c4138ab39d5f2633 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_area_total_area_low_frequency.o ../kps/kp_gest10_0/mplabml/src/fg_area_total_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_max_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4fe0da31b2f0428ae01d189d7e0f46f30b4f33e7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_max_column.o ../kps/kp_gest10_0/mplabml/src/fg_cross_max_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_mean_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/df955e089a66a732b0c7a7aa59b3e82699289b8a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_mean_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_mean_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_median_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2a2ab11f873d72df8e17b4dd3a1a8767785d8f62 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_median_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_median_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_min_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6999596e218f5c4040c95dbbfb48e6f3e422a4d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_min_column.o ../kps/kp_gest10_0/mplabml/src/fg_cross_min_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_p2p_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/97371c00912e37c9d4d5ce1ea44c7ff46f1d2454 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_p2p_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_p2p_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o: ../kps/kp_gest10_0/mplabml/src/fg_cross_peak_location_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4961e5e12b618d9aee4c4660792606eb55aa6cea .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_cross_peak_location_difference.o ../kps/kp_gest10_0/mplabml/src/fg_cross_peak_location_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_harmonic_product_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/461a3bb29f4ac63a6a06ecedf3929f9f1da94ded .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_harmonic_product_spectrum.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_harmonic_product_spectrum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5519f077ffc21e030b7878cce06f7c36fe8598bc .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_mfe.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2f75b9f5c73fd58cf68d9b9d5b3d3506dfcdda22 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_power_spectrum.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o: ../kps/kp_gest10_0/mplabml/src/fg_frequency_spectral_entropy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/562100bcb5ff90950d7b25080a9744aff911c7f7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_frequency_spectral_entropy.o ../kps/kp_gest10_0/mplabml/src/fg_frequency_spectral_entropy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_abs_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5e058a566a466ade04e9e512d5970e0063fa5cd6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_abs_mean.o ../kps/kp_gest10_0/mplabml/src/fg_stats_abs_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_iqr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5b83b60541b8f14832b1c4e64f1da72a94e1a01a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_iqr.o ../kps/kp_gest10_0/mplabml/src/fg_stats_iqr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_linear_regression.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c53f46fe8b6f6863d0ec4b7305c4f0e24edc435f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_linear_regression.o ../kps/kp_gest10_0/mplabml/src/fg_stats_linear_regression.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_maximum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6527f9534b3c10b473bfe28f45b56e2fea0fdb30 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_maximum.o ../kps/kp_gest10_0/mplabml/src/fg_stats_maximum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_minimum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2c9b62a34d276d2317154247679f0b945752827d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_minimum.o ../kps/kp_gest10_0/mplabml/src/fg_stats_minimum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_pct025.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ef2b713994c770ec2aa4c514d0174e8279918785 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_pct025.o ../kps/kp_gest10_0/mplabml/src/fg_stats_pct025.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_pct075.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/22f41a4863088d3128e824209a0c846e9d8f174d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_pct075.o ../kps/kp_gest10_0/mplabml/src/fg_stats_pct075.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_skewness.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/739796990ac3324c0ff13cea81dc38e157c7f289 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_skewness.o ../kps/kp_gest10_0/mplabml/src/fg_stats_skewness.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_stats_variance.o: ../kps/kp_gest10_0/mplabml/src/fg_stats_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6e26c4ec612e959b3ec1a4a0863a3268e0930df3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_stats_variance.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_stats_variance.o ../kps/kp_gest10_0/mplabml/src/fg_stats_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o: ../kps/kp_gest10_0/mplabml/src/fg_time_average_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1d3ed786ebd28a320fe06d7b4c627275a670bb62 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_time_average_time_over_threshold.o ../kps/kp_gest10_0/mplabml/src/fg_time_average_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o: ../kps/kp_gest10_0/mplabml/src/fg_time_pct_time_over_zero.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d736d48c5d0020095f94c6da0cb830d03a37c155 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o.d" -o ${OBJECTDIR}/_ext/250963624/fg_time_pct_time_over_zero.o ../kps/kp_gest10_0/mplabml/src/fg_time_pct_time_over_zero.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/fixlog.o: ../kps/kp_gest10_0/mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dab2770074e86b0015475bccc2fbcafa855027f2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/fixlog.o.d" -o ${OBJECTDIR}/_ext/250963624/fixlog.o ../kps/kp_gest10_0/mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/imfcc.o: ../kps/kp_gest10_0/mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c10be48fe936003301a65c0311e039f84d98a884 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/imfcc.o.d" -o ${OBJECTDIR}/_ext/250963624/imfcc.o ../kps/kp_gest10_0/mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb.o: ../kps/kp_gest10_0/mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a79b96ad9d7a02493da88e76c13c7466ce78789b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb.o.d" -o ${OBJECTDIR}/_ext/250963624/kb.o ../kps/kp_gest10_0/mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb_output.o: ../kps/kp_gest10_0/mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e45de3bc95ee3fb293a414580cb121d2d5859d9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb_output.o.d" -o ${OBJECTDIR}/_ext/250963624/kb_output.o ../kps/kp_gest10_0/mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb_pipeline.o: ../kps/kp_gest10_0/mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5d2bfe4eb17ffaad97c7028d43f804f31b64a3eb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/250963624/kb_pipeline.o ../kps/kp_gest10_0/mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/kb_post_processing.o: ../kps/kp_gest10_0/mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/562d4e53934898c882162bc0a22634c355a92a61 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/250963624/kb_post_processing.o ../kps/kp_gest10_0/mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o: ../kps/kp_gest10_0/mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b2b499d3314fe2c9cf89fc15705146e2e06b3185 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/250963624/max_min_high_low_freq.o ../kps/kp_gest10_0/mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/ma_symmetric.o: ../kps/kp_gest10_0/mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e05d4ec7044d389aa9e638e3cb2c4a455f850b40 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/250963624/ma_symmetric.o ../kps/kp_gest10_0/mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/mean.o: ../kps/kp_gest10_0/mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c51f04faebb071ce84d315cc48392386f09f0b98 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/mean.o.d" -o ${OBJECTDIR}/_ext/250963624/mean.o ../kps/kp_gest10_0/mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o: ../kps/kp_gest10_0/mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/99a887ae4985106a7a27a19fe9639c01b35e7b4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/250963624/ratio_diff_impl.o ../kps/kp_gest10_0/mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/rb.o: ../kps/kp_gest10_0/mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4b694c8da1b7c14c1f0c6501f6484c7f62ed5dda .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/rb.o.d" -o ${OBJECTDIR}/_ext/250963624/rb.o ../kps/kp_gest10_0/mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/save_sensor_data.o: ../kps/kp_gest10_0/mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d0bf06560958d8ac1436df79ccf3b1779742454 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/250963624/save_sensor_data.o ../kps/kp_gest10_0/mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o: ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/68953528ea3c50d56f7e12a0f35801e783637437 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_averaging.o ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o: ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/cedd8c4f42c7f5f80bcbc9a682fcab8805d08b08 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/250963624/sf_downsample_by_decimation.o ../kps/kp_gest10_0/mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sg_windowing.o: ../kps/kp_gest10_0/mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6cb84562e8671d35bd657be506d43263f87b0121 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/250963624/sg_windowing.o ../kps/kp_gest10_0/mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sortarray.o: ../kps/kp_gest10_0/mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a54b8938841249b076935e7d2020e5fcf24daada .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sortarray.o.d" -o ${OBJECTDIR}/_ext/250963624/sortarray.o ../kps/kp_gest10_0/mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sorted_copy.o: ../kps/kp_gest10_0/mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/791939736cc40f8f3ca025da879260c802b2e12b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/250963624/sorted_copy.o ../kps/kp_gest10_0/mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o: ../kps/kp_gest10_0/mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9dd2e5e374526b7e513e6c27ea25b5ad5e3c725b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/250963624/stats_percentile_presorted.o ../kps/kp_gest10_0/mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/stat_mean.o: ../kps/kp_gest10_0/mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5dc4cf8ce6ac37ce42235e371b3886da57379cde .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/stat_mean.o.d" -o ${OBJECTDIR}/_ext/250963624/stat_mean.o ../kps/kp_gest10_0/mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/stat_moment.o: ../kps/kp_gest10_0/mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/848f8a2e362ed13a9846112d0a191e06e1d4eaad .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/stat_moment.o.d" -o ${OBJECTDIR}/_ext/250963624/stat_moment.o ../kps/kp_gest10_0/mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/std.o: ../kps/kp_gest10_0/mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dc93215f15a24c95d1b6a83bac28707adb6e0f80 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/std.o.d" -o ${OBJECTDIR}/_ext/250963624/std.o ../kps/kp_gest10_0/mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_absolute_average.o: ../kps/kp_gest10_0/mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/15f35bca2d712493a8b1ff8081e7b82dabc58e3b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/250963624/st_absolute_average.o ../kps/kp_gest10_0/mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_average.o: ../kps/kp_gest10_0/mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8ae4f4a07f4843b3d3f03a901bff1ebb44cadcb1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_average.o.d" -o ${OBJECTDIR}/_ext/250963624/st_average.o ../kps/kp_gest10_0/mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o: ../kps/kp_gest10_0/mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8144c37348e5abc668df2e1d5c21a4fa5834efb2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/250963624/st_high_pass_filter.o ../kps/kp_gest10_0/mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/st_moving_average.o: ../kps/kp_gest10_0/mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c9d5e0c0e2110fb4a1ce83865a23d05109678921 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/250963624/st_moving_average.o ../kps/kp_gest10_0/mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/sum.o: ../kps/kp_gest10_0/mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4eade586da47e9574df0e4de1eedc7d1d6283b2f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/sum.o.d" -o ${OBJECTDIR}/_ext/250963624/sum.o ../kps/kp_gest10_0/mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tree_ensemble.o: ../kps/kp_gest10_0/mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4efbb27550a8f10204dd0772ced511de9e513ba9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/250963624/tree_ensemble.o ../kps/kp_gest10_0/mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o: ../kps/kp_gest10_0/mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/620df20ca55dc4516541fd0af016e8c950693af4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/250963624/tree_ensemble_trained_models.o ../kps/kp_gest10_0/mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o: ../kps/kp_gest10_0/mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/489f102a20a0b6640b3e45c40a4db7356c0d3f3b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/250963624/tr_min_max_scale.o ../kps/kp_gest10_0/mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o: ../kps/kp_gest10_0/mplabml/src/tr_sensor_magnitude.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fc373be88a9c7a5677511d72cbb13187716df88e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o.d" -o ${OBJECTDIR}/_ext/250963624/tr_sensor_magnitude.o ../kps/kp_gest10_0/mplabml/src/tr_sensor_magnitude.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_array.o: ../kps/kp_gest10_0/mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2ea72186fa2222d51c120468c3347f447376926c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_array.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_array.o ../kps/kp_gest10_0/mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o: ../kps/kp_gest10_0/mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4626cc9cc2681d6cf51978925d1db3a6edaf87e9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_array_max_uint8.o ../kps/kp_gest10_0/mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o: ../kps/kp_gest10_0/mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bc7da104c3eee035cba41c608f9473b742b084a5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_bitwise_abs_val.o ../kps/kp_gest10_0/mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1366b8cf8c6aa13042bf1df4ce9d79b329a5a99b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_absmean.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/50e979764a0bccb7ee72a76b479807669b9af65f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_abssum.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d11fc6c63992b65b427b35cf4c38d9c2fadf1c07 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_abs_max.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/98298911c2813e0259ac490ddadacaf85bf276ad .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_argmax.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/24775f270c6da1e78117961849f04e768c96b6e7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_autoscale.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ed0f84362a36bb185c4643bb6df819c3aaed57e3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_cumsum.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_max.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b8e24eb90d53938176863666856f78df4def7eb5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_max.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c1ec147eeb95d4b271dedfd8c2b79b5ea597202 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_mean.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_median.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9189dafa86fbe7b6f0a7a1ba63c419f42914700 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_median.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_min.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f98a3ea01726ff4ccbaeec3511cc7baae3eb5758 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_min.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/56bc00bd971359de4b8115d1f43162e46dfede2c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_min_max.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4da50e0aa7896d75004224ceb5228cbfab90e232 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_pass_threshold.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_std.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/af3b9810fa3853198a2661ae81eacbfc9e705e5d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_std.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o: ../kps/kp_gest10_0/mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f586662905c676fcc31a80d5cb109e2de63242f6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_buffer_variance.o ../kps/kp_gest10_0/mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o: ../kps/kp_gest10_0/mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/361a82b2436e703b24e6e69fee51db087fb20885 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_crossing_rate.o ../kps/kp_gest10_0/mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o: ../kps/kp_gest10_0/mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/54df1d3d0ebcf3c47b6e6be47a31d2dc9a2b298f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_cross_column.o ../kps/kp_gest10_0/mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o: ../kps/kp_gest10_0/mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/75ee163e987c690850d769a2eddf7e888062679a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_cross_difference.o ../kps/kp_gest10_0/mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o: ../kps/kp_gest10_0/mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5bb33049c3a83eec88eac5a3fc7e3d40c69ccfc1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_mean_crossing_rate.o ../kps/kp_gest10_0/mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o: ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ec3145f93ec3bd4c852800dbc406fbc2e786625a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_sigma.o ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o: ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/18c4c05441c323428a0ba83a6b0c4ffc9ec6227d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_pct_time_over_threshold.o ../kps/kp_gest10_0/mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o: ../kps/kp_gest10_0/mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/402b81b5624c8637ae6578755e226518c7f3f316 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_stats_max_min.o ../kps/kp_gest10_0/mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_total_area.o: ../kps/kp_gest10_0/mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b7007ae43d4b0bde0c7aca27d4c3765c826d2968 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_total_area.o ../kps/kp_gest10_0/mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o: ../kps/kp_gest10_0/mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/35fcad03b8f799d6659ae44bdcff75e90f6f8981 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_model_total_energy.o ../kps/kp_gest10_0/mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o: ../kps/kp_gest10_0/mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e0473fb463586709c44c0c0b0d6cb577e31770c8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/250963624" 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/250963624/utils_tr_sensor.o ../kps/kp_gest10_0/mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o: ../kps/kp_gest10_0/application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8e3a22e863a72c6847891d1a90932f736f58eef .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1018891514" 
	@${RM} ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/1018891514/sml_recognition_run.o ../kps/kp_gest10_0/application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../mplabml/lib/libmplabml.a  ../src/config/SAMD21_IOT_WG_ICM42688/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\mplabml\lib\libmplabml.a      -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../mplabml/lib/libmplabml.a ../src/config/SAMD21_IOT_WG_ICM42688/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\mplabml\lib\libmplabml.a      -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
