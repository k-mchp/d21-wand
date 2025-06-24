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
SOURCEFILES_QUOTED_IF_SPACED=../src/app_config/icm42688/icm42688_sensor.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c ../Icm426xx/Icm426xxDriver_HL.c ../Icm426xx/Icm426xxDriver_HL_apex.c ../Icm426xx/Icm426xxSelfTest.c ../Icm426xx/Icm426xxTransport.c ../src/main.c ../src/ringbuffer.c ../src/ws2812.c ../kps/kp_gest_12_2/application/sml_recognition_run.c ../kps/kp_gest_12_2/mplabml/src/array_contains.c ../kps/kp_gest_12_2/mplabml/src/calc_area.c ../kps/kp_gest_12_2/mplabml/src/column_to_row_complex.c ../kps/kp_gest_12_2/mplabml/src/crossing_rate.c ../kps/kp_gest_12_2/mplabml/src/dsp_dtw_distance.c ../kps/kp_gest_12_2/mplabml/src/dsp_l1_distance.c ../kps/kp_gest_12_2/mplabml/src/dsp_lsup_distance.c ../kps/kp_gest_12_2/mplabml/src/fftr.c ../kps/kp_gest_12_2/mplabml/src/fftr_utils.c ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_global_p2p_high_frequency.c ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_min_max_sum.c ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_peak_to_peak.c ../kps/kp_gest_12_2/mplabml/src/fg_area_absolute_area_high_frequency.c ../kps/kp_gest_12_2/mplabml/src/fg_area_power_spectrum_density.c ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area.c ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area_low_frequency.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_mean_difference.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_min_column.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_p2p_difference.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_peak_location_difference.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_abs_mean.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_iqr.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_kurtosis.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_linear_regression.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_minimum.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct025.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct075.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_skewness.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_stdev.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_variance.c ../kps/kp_gest_12_2/mplabml/src/fixlog.c ../kps/kp_gest_12_2/mplabml/src/imfcc.c ../kps/kp_gest_12_2/mplabml/src/kb.c ../kps/kp_gest_12_2/mplabml/src/kb_output.c ../kps/kp_gest_12_2/mplabml/src/kb_pipeline.c ../kps/kp_gest_12_2/mplabml/src/kb_post_processing.c ../kps/kp_gest_12_2/mplabml/src/max_min_high_low_freq.c ../kps/kp_gest_12_2/mplabml/src/ma_symmetric.c ../kps/kp_gest_12_2/mplabml/src/mean.c ../kps/kp_gest_12_2/mplabml/src/pme.c ../kps/kp_gest_12_2/mplabml/src/pme_trained_neurons.c ../kps/kp_gest_12_2/mplabml/src/ratio_diff_impl.c ../kps/kp_gest_12_2/mplabml/src/rb.c ../kps/kp_gest_12_2/mplabml/src/save_sensor_data.c ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_averaging.c ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_decimation.c ../kps/kp_gest_12_2/mplabml/src/sg_windowing.c ../kps/kp_gest_12_2/mplabml/src/sortarray.c ../kps/kp_gest_12_2/mplabml/src/sorted_copy.c ../kps/kp_gest_12_2/mplabml/src/stats_percentile_presorted.c ../kps/kp_gest_12_2/mplabml/src/stat_mean.c ../kps/kp_gest_12_2/mplabml/src/stat_moment.c ../kps/kp_gest_12_2/mplabml/src/std.c ../kps/kp_gest_12_2/mplabml/src/st_absolute_average.c ../kps/kp_gest_12_2/mplabml/src/st_average.c ../kps/kp_gest_12_2/mplabml/src/st_high_pass_filter.c ../kps/kp_gest_12_2/mplabml/src/st_moving_average.c ../kps/kp_gest_12_2/mplabml/src/sum.c ../kps/kp_gest_12_2/mplabml/src/tr_min_max_scale.c ../kps/kp_gest_12_2/mplabml/src/tr_sensor_magnitude.c ../kps/kp_gest_12_2/mplabml/src/utils_array.c ../kps/kp_gest_12_2/mplabml/src/utils_array_max_uint8.c ../kps/kp_gest_12_2/mplabml/src/utils_bitwise_abs_val.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_absmean.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abssum.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abs_max.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_argmax.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_autoscale.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_cumsum.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_max.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_mean.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_median.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min_max.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_pass_threshold.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_std.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_variance.c ../kps/kp_gest_12_2/mplabml/src/utils_model_crossing_rate.c ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_column.c ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_difference.c ../kps/kp_gest_12_2/mplabml/src/utils_model_mean_crossing_rate.c ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_sigma.c ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_threshold.c ../kps/kp_gest_12_2/mplabml/src/utils_model_stats_max_min.c ../kps/kp_gest_12_2/mplabml/src/utils_model_total_area.c ../kps/kp_gest_12_2/mplabml/src/utils_model_total_energy.c ../kps/kp_gest_12_2/mplabml/src/utils_tr_sensor.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ${OBJECTDIR}/_ext/503204096/plib_eic.o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ${OBJECTDIR}/_ext/1580876256/plib_port.o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ${OBJECTDIR}/_ext/223004715/plib_systick.o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ${OBJECTDIR}/_ext/1832905403/initialization.o ${OBJECTDIR}/_ext/1832905403/interrupts.o ${OBJECTDIR}/_ext/1832905403/exceptions.o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/1360937237/ws2812.o ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o ${OBJECTDIR}/_ext/1827875495/array_contains.o ${OBJECTDIR}/_ext/1827875495/calc_area.o ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o ${OBJECTDIR}/_ext/1827875495/crossing_rate.o ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o ${OBJECTDIR}/_ext/1827875495/fftr.o ${OBJECTDIR}/_ext/1827875495/fftr_utils.o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o ${OBJECTDIR}/_ext/1827875495/fixlog.o ${OBJECTDIR}/_ext/1827875495/imfcc.o ${OBJECTDIR}/_ext/1827875495/kb.o ${OBJECTDIR}/_ext/1827875495/kb_output.o ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o ${OBJECTDIR}/_ext/1827875495/mean.o ${OBJECTDIR}/_ext/1827875495/pme.o ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o ${OBJECTDIR}/_ext/1827875495/rb.o ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/1827875495/sg_windowing.o ${OBJECTDIR}/_ext/1827875495/sortarray.o ${OBJECTDIR}/_ext/1827875495/sorted_copy.o ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o ${OBJECTDIR}/_ext/1827875495/stat_mean.o ${OBJECTDIR}/_ext/1827875495/stat_moment.o ${OBJECTDIR}/_ext/1827875495/std.o ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o ${OBJECTDIR}/_ext/1827875495/st_average.o ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o ${OBJECTDIR}/_ext/1827875495/st_moving_average.o ${OBJECTDIR}/_ext/1827875495/sum.o ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o ${OBJECTDIR}/_ext/1827875495/utils_array.o ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o.d ${OBJECTDIR}/_ext/1750425231/plib_clock.o.d ${OBJECTDIR}/_ext/503204096/plib_eic.o.d ${OBJECTDIR}/_ext/1752574717/plib_evsys.o.d ${OBJECTDIR}/_ext/1580823105/plib_nvic.o.d ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1580876256/plib_port.o.d ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o.d ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/223004715/plib_systick.o.d ${OBJECTDIR}/_ext/399410062/plib_tc3.o.d ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832905403/initialization.o.d ${OBJECTDIR}/_ext/1832905403/interrupts.o.d ${OBJECTDIR}/_ext/1832905403/exceptions.o.d ${OBJECTDIR}/_ext/1832905403/startup_xc32.o.d ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d ${OBJECTDIR}/_ext/1360937237/ws2812.o.d ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o.d ${OBJECTDIR}/_ext/1827875495/array_contains.o.d ${OBJECTDIR}/_ext/1827875495/calc_area.o.d ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o.d ${OBJECTDIR}/_ext/1827875495/crossing_rate.o.d ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o.d ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o.d ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o.d ${OBJECTDIR}/_ext/1827875495/fftr.o.d ${OBJECTDIR}/_ext/1827875495/fftr_utils.o.d ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o.d ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o.d ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o.d ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o.d ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o.d ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o.d ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o.d ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o.d ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o.d ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o.d ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o.d ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o.d ${OBJECTDIR}/_ext/1827875495/fixlog.o.d ${OBJECTDIR}/_ext/1827875495/imfcc.o.d ${OBJECTDIR}/_ext/1827875495/kb.o.d ${OBJECTDIR}/_ext/1827875495/kb_output.o.d ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o.d ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o.d ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o.d ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o.d ${OBJECTDIR}/_ext/1827875495/mean.o.d ${OBJECTDIR}/_ext/1827875495/pme.o.d ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o.d ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o.d ${OBJECTDIR}/_ext/1827875495/rb.o.d ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o.d ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o.d ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o.d ${OBJECTDIR}/_ext/1827875495/sg_windowing.o.d ${OBJECTDIR}/_ext/1827875495/sortarray.o.d ${OBJECTDIR}/_ext/1827875495/sorted_copy.o.d ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o.d ${OBJECTDIR}/_ext/1827875495/stat_mean.o.d ${OBJECTDIR}/_ext/1827875495/stat_moment.o.d ${OBJECTDIR}/_ext/1827875495/std.o.d ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o.d ${OBJECTDIR}/_ext/1827875495/st_average.o.d ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o.d ${OBJECTDIR}/_ext/1827875495/st_moving_average.o.d ${OBJECTDIR}/_ext/1827875495/sum.o.d ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o.d ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o.d ${OBJECTDIR}/_ext/1827875495/utils_array.o.d ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o.d ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o.d ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o.d ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o.d ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ${OBJECTDIR}/_ext/503204096/plib_eic.o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ${OBJECTDIR}/_ext/1580876256/plib_port.o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ${OBJECTDIR}/_ext/223004715/plib_systick.o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ${OBJECTDIR}/_ext/1832905403/initialization.o ${OBJECTDIR}/_ext/1832905403/interrupts.o ${OBJECTDIR}/_ext/1832905403/exceptions.o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/1360937237/ws2812.o ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o ${OBJECTDIR}/_ext/1827875495/array_contains.o ${OBJECTDIR}/_ext/1827875495/calc_area.o ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o ${OBJECTDIR}/_ext/1827875495/crossing_rate.o ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o ${OBJECTDIR}/_ext/1827875495/fftr.o ${OBJECTDIR}/_ext/1827875495/fftr_utils.o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o ${OBJECTDIR}/_ext/1827875495/fixlog.o ${OBJECTDIR}/_ext/1827875495/imfcc.o ${OBJECTDIR}/_ext/1827875495/kb.o ${OBJECTDIR}/_ext/1827875495/kb_output.o ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o ${OBJECTDIR}/_ext/1827875495/mean.o ${OBJECTDIR}/_ext/1827875495/pme.o ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o ${OBJECTDIR}/_ext/1827875495/rb.o ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/1827875495/sg_windowing.o ${OBJECTDIR}/_ext/1827875495/sortarray.o ${OBJECTDIR}/_ext/1827875495/sorted_copy.o ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o ${OBJECTDIR}/_ext/1827875495/stat_mean.o ${OBJECTDIR}/_ext/1827875495/stat_moment.o ${OBJECTDIR}/_ext/1827875495/std.o ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o ${OBJECTDIR}/_ext/1827875495/st_average.o ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o ${OBJECTDIR}/_ext/1827875495/st_moving_average.o ${OBJECTDIR}/_ext/1827875495/sum.o ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o ${OBJECTDIR}/_ext/1827875495/utils_array.o ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o

# Source Files
SOURCEFILES=../src/app_config/icm42688/icm42688_sensor.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c ../Icm426xx/Icm426xxDriver_HL.c ../Icm426xx/Icm426xxDriver_HL_apex.c ../Icm426xx/Icm426xxSelfTest.c ../Icm426xx/Icm426xxTransport.c ../src/main.c ../src/ringbuffer.c ../src/ws2812.c ../kps/kp_gest_12_2/application/sml_recognition_run.c ../kps/kp_gest_12_2/mplabml/src/array_contains.c ../kps/kp_gest_12_2/mplabml/src/calc_area.c ../kps/kp_gest_12_2/mplabml/src/column_to_row_complex.c ../kps/kp_gest_12_2/mplabml/src/crossing_rate.c ../kps/kp_gest_12_2/mplabml/src/dsp_dtw_distance.c ../kps/kp_gest_12_2/mplabml/src/dsp_l1_distance.c ../kps/kp_gest_12_2/mplabml/src/dsp_lsup_distance.c ../kps/kp_gest_12_2/mplabml/src/fftr.c ../kps/kp_gest_12_2/mplabml/src/fftr_utils.c ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_global_p2p_high_frequency.c ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_min_max_sum.c ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_peak_to_peak.c ../kps/kp_gest_12_2/mplabml/src/fg_area_absolute_area_high_frequency.c ../kps/kp_gest_12_2/mplabml/src/fg_area_power_spectrum_density.c ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area.c ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area_low_frequency.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_mean_difference.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_min_column.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_p2p_difference.c ../kps/kp_gest_12_2/mplabml/src/fg_cross_peak_location_difference.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_abs_mean.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_iqr.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_kurtosis.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_linear_regression.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_minimum.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct025.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct075.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_skewness.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_stdev.c ../kps/kp_gest_12_2/mplabml/src/fg_stats_variance.c ../kps/kp_gest_12_2/mplabml/src/fixlog.c ../kps/kp_gest_12_2/mplabml/src/imfcc.c ../kps/kp_gest_12_2/mplabml/src/kb.c ../kps/kp_gest_12_2/mplabml/src/kb_output.c ../kps/kp_gest_12_2/mplabml/src/kb_pipeline.c ../kps/kp_gest_12_2/mplabml/src/kb_post_processing.c ../kps/kp_gest_12_2/mplabml/src/max_min_high_low_freq.c ../kps/kp_gest_12_2/mplabml/src/ma_symmetric.c ../kps/kp_gest_12_2/mplabml/src/mean.c ../kps/kp_gest_12_2/mplabml/src/pme.c ../kps/kp_gest_12_2/mplabml/src/pme_trained_neurons.c ../kps/kp_gest_12_2/mplabml/src/ratio_diff_impl.c ../kps/kp_gest_12_2/mplabml/src/rb.c ../kps/kp_gest_12_2/mplabml/src/save_sensor_data.c ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_averaging.c ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_decimation.c ../kps/kp_gest_12_2/mplabml/src/sg_windowing.c ../kps/kp_gest_12_2/mplabml/src/sortarray.c ../kps/kp_gest_12_2/mplabml/src/sorted_copy.c ../kps/kp_gest_12_2/mplabml/src/stats_percentile_presorted.c ../kps/kp_gest_12_2/mplabml/src/stat_mean.c ../kps/kp_gest_12_2/mplabml/src/stat_moment.c ../kps/kp_gest_12_2/mplabml/src/std.c ../kps/kp_gest_12_2/mplabml/src/st_absolute_average.c ../kps/kp_gest_12_2/mplabml/src/st_average.c ../kps/kp_gest_12_2/mplabml/src/st_high_pass_filter.c ../kps/kp_gest_12_2/mplabml/src/st_moving_average.c ../kps/kp_gest_12_2/mplabml/src/sum.c ../kps/kp_gest_12_2/mplabml/src/tr_min_max_scale.c ../kps/kp_gest_12_2/mplabml/src/tr_sensor_magnitude.c ../kps/kp_gest_12_2/mplabml/src/utils_array.c ../kps/kp_gest_12_2/mplabml/src/utils_array_max_uint8.c ../kps/kp_gest_12_2/mplabml/src/utils_bitwise_abs_val.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_absmean.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abssum.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abs_max.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_argmax.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_autoscale.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_cumsum.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_max.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_mean.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_median.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min_max.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_pass_threshold.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_std.c ../kps/kp_gest_12_2/mplabml/src/utils_buffer_variance.c ../kps/kp_gest_12_2/mplabml/src/utils_model_crossing_rate.c ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_column.c ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_difference.c ../kps/kp_gest_12_2/mplabml/src/utils_model_mean_crossing_rate.c ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_sigma.c ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_threshold.c ../kps/kp_gest_12_2/mplabml/src/utils_model_stats_max_min.c ../kps/kp_gest_12_2/mplabml/src/utils_model_total_area.c ../kps/kp_gest_12_2/mplabml/src/utils_model_total_energy.c ../kps/kp_gest_12_2/mplabml/src/utils_tr_sensor.c



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
	
${OBJECTDIR}/_ext/1360937237/ws2812.o: ../src/ws2812.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3d6b8ea10041af912d6dd3a0d555439b4b14bd67 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ws2812.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ws2812.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ws2812.o.d" -o ${OBJECTDIR}/_ext/1360937237/ws2812.o ../src/ws2812.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o: ../kps/kp_gest_12_2/application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4c977dc5239bb997a06419f509ac4841e6bb6355 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1059947605" 
	@${RM} ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o ../kps/kp_gest_12_2/application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/array_contains.o: ../kps/kp_gest_12_2/mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9d9fbd8a85d370c3295593457dae25d16c892415 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/array_contains.o.d" -o ${OBJECTDIR}/_ext/1827875495/array_contains.o ../kps/kp_gest_12_2/mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/calc_area.o: ../kps/kp_gest_12_2/mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5d3219a907ceced768e25030b77cb94b1a3826ed .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/calc_area.o.d" -o ${OBJECTDIR}/_ext/1827875495/calc_area.o ../kps/kp_gest_12_2/mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o: ../kps/kp_gest_12_2/mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4b43ca1116ee0f136dc948b4766bebda4f70a95f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o ../kps/kp_gest_12_2/mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/crossing_rate.o: ../kps/kp_gest_12_2/mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bb99d90e59efd890dcf1152f2d68c561be968c8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/1827875495/crossing_rate.o ../kps/kp_gest_12_2/mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o: ../kps/kp_gest_12_2/mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/87c15daba4dc76e3da32a204ab0afd86c5b5139e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o ../kps/kp_gest_12_2/mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o: ../kps/kp_gest_12_2/mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ed582fe95a2eb14d36fa8d4442f54743852f480 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o ../kps/kp_gest_12_2/mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o: ../kps/kp_gest_12_2/mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/338b1ad2c2d034dfc2492807a9f0ec796fc3f8ae .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o ../kps/kp_gest_12_2/mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fftr.o: ../kps/kp_gest_12_2/mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d1fdcfefef3b1e83e8a0b0a7bfd02a52875cde73 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fftr.o.d" -o ${OBJECTDIR}/_ext/1827875495/fftr.o ../kps/kp_gest_12_2/mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fftr_utils.o: ../kps/kp_gest_12_2/mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/62bb46cb1e892551232b372239d6b146b45b45b1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/1827875495/fftr_utils.o ../kps/kp_gest_12_2/mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o: ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_global_p2p_high_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5408e679926d71782c2e1a19c222da6695f6bcd3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_global_p2p_high_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o: ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_min_max_sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5b783d15607b3d71c8fa83c054acf91474a2811f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_min_max_sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o: ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_peak_to_peak.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2290c7e17b8df3c326b8ea925e13bd646e91ba02 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_peak_to_peak.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_absolute_area_high_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a9052e1eb03135360465813f56e469a37710cce7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o ../kps/kp_gest_12_2/mplabml/src/fg_area_absolute_area_high_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_power_spectrum_density.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9ed20892889895ff720a0424162ca2ce11bd49a1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o ../kps/kp_gest_12_2/mplabml/src/fg_area_power_spectrum_density.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b9f60645a316bc2b5802372cfaa12ae04cfd1d09 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bf5d67998089902acb4e9f735abc9091b97d2e33 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_mean_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ef11e91c9a98e7a721302bb2b9824990c4d041d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_mean_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_min_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bf9695def8e854be70bc34c19a1e83c1eda2aa6c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_min_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_p2p_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/63dd595ab53882ced207673ecde0eb8de2b6e53a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_p2p_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_peak_location_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/340177d9fd4477a9f92485a5d166de7f9c745aa6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_peak_location_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_abs_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d8e04828d6437f8cfd7f745a0be22f5d11484e3e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_abs_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_iqr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f22a62396bad4521333fa211535c7cfeac46affb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_iqr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_kurtosis.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4aa829b7bd76774ff17c4d3f611c6f28862f34ab .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_kurtosis.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_linear_regression.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ee90341c35d78aab3e3ca166d07cf1940f0e992 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_linear_regression.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_minimum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/96e64065ebc4018b519813e90ffb47f32162d831 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_minimum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct025.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bd70dfcf94325d4c3d11ce9dc9fd35a05ab05f21 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct025.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct075.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d029054e07304c9e83c06e4c86405a44b9f02246 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct075.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_skewness.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ad1289c1b23514843005521b5c857effc8c4f97e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_skewness.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_stdev.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f5d00465cc5d2c46b521bd5b2346f11f60d017af .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_stdev.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/98bf864f69c05e588ed2860bf1b0f511700ecb36 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fixlog.o: ../kps/kp_gest_12_2/mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e555cb487295fe4b527e2302ca4f65aa540ee2c8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fixlog.o.d" -o ${OBJECTDIR}/_ext/1827875495/fixlog.o ../kps/kp_gest_12_2/mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/imfcc.o: ../kps/kp_gest_12_2/mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/cedfdb94dabc157ec9c2b3679422e44f72150213 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/imfcc.o.d" -o ${OBJECTDIR}/_ext/1827875495/imfcc.o ../kps/kp_gest_12_2/mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb.o: ../kps/kp_gest_12_2/mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d86228572a6c99858b5e0112eec30d718ac96a57 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb.o ../kps/kp_gest_12_2/mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb_output.o: ../kps/kp_gest_12_2/mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a000b9b6494aa7b964c1927744a504a78748169d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb_output.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb_output.o ../kps/kp_gest_12_2/mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb_pipeline.o: ../kps/kp_gest_12_2/mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/31d72e7889fc2ab67e3afcbedac80159db5b161b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o ../kps/kp_gest_12_2/mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb_post_processing.o: ../kps/kp_gest_12_2/mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9d0b4519ecfd4d493bc7aaa9ada1ad327f3321a3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o ../kps/kp_gest_12_2/mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o: ../kps/kp_gest_12_2/mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e5e4694a6e10cd8eca3eae1a2c42cb8b14de58bb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o ../kps/kp_gest_12_2/mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/ma_symmetric.o: ../kps/kp_gest_12_2/mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c194297fd2bbae222dba20f14cd2285dab4240d5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o ../kps/kp_gest_12_2/mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/mean.o: ../kps/kp_gest_12_2/mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/30e367daf422530061cd314c2f31fc06f0b90e0a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/mean.o ../kps/kp_gest_12_2/mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/pme.o: ../kps/kp_gest_12_2/mplabml/src/pme.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8d858395680656926c0fd5e702c9f7174ccefd6e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/pme.o.d" -o ${OBJECTDIR}/_ext/1827875495/pme.o ../kps/kp_gest_12_2/mplabml/src/pme.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o: ../kps/kp_gest_12_2/mplabml/src/pme_trained_neurons.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3bf27515697e3a9a20d14fed592ebc2e1ed09817 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o.d" -o ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o ../kps/kp_gest_12_2/mplabml/src/pme_trained_neurons.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o: ../kps/kp_gest_12_2/mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/75e7d5e8ddcfcdc44bea7d114ffb75a6b559a31d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o ../kps/kp_gest_12_2/mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/rb.o: ../kps/kp_gest_12_2/mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/196496293f943b638b73e834f2edd3f5d1594f2b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/rb.o.d" -o ${OBJECTDIR}/_ext/1827875495/rb.o ../kps/kp_gest_12_2/mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/save_sensor_data.o: ../kps/kp_gest_12_2/mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d6ec7820301c32cdc18aa5c65350cc59ff1b2ef7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o ../kps/kp_gest_12_2/mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o: ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9a25b26185370256567b2479187200baeb7943be .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o: ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e2bdf5b289766e577e6a4f72ebcfa5f685a6012 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sg_windowing.o: ../kps/kp_gest_12_2/mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/33cb3805765b4ad9e115670c0bc2193f207c5904 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/1827875495/sg_windowing.o ../kps/kp_gest_12_2/mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sortarray.o: ../kps/kp_gest_12_2/mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/320a6c35d8399eaf84ccbee52d3d15b522a99dfd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sortarray.o.d" -o ${OBJECTDIR}/_ext/1827875495/sortarray.o ../kps/kp_gest_12_2/mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sorted_copy.o: ../kps/kp_gest_12_2/mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c1d50dbfed1838599d4871c27c2d7c8d22118392 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/1827875495/sorted_copy.o ../kps/kp_gest_12_2/mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o: ../kps/kp_gest_12_2/mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/506762169d876c12063a8b7895ae88dc4db01b42 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o ../kps/kp_gest_12_2/mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/stat_mean.o: ../kps/kp_gest_12_2/mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5b97c391af03aa11c3229569350eed558c78eeff .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/stat_mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/stat_mean.o ../kps/kp_gest_12_2/mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/stat_moment.o: ../kps/kp_gest_12_2/mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/981beebdb5980ce4589b8b99aacea30b994abb96 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/stat_moment.o.d" -o ${OBJECTDIR}/_ext/1827875495/stat_moment.o ../kps/kp_gest_12_2/mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/std.o: ../kps/kp_gest_12_2/mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/387d2d487f1f9ad48b2677cd41729538616cb2dc .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/std.o.d" -o ${OBJECTDIR}/_ext/1827875495/std.o ../kps/kp_gest_12_2/mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_absolute_average.o: ../kps/kp_gest_12_2/mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d3a847984f6930b22efa9de0c516274d1542667c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o ../kps/kp_gest_12_2/mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_average.o: ../kps/kp_gest_12_2/mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6755ba1d3143e01b204b5f800b32329e651df3e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_average.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_average.o ../kps/kp_gest_12_2/mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o: ../kps/kp_gest_12_2/mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/572b3f2ecc34904613f4b9d6581415fab6b73806 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o ../kps/kp_gest_12_2/mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_moving_average.o: ../kps/kp_gest_12_2/mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d3775526f5c866777259fad7de4a9aa48f23fbbe .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_moving_average.o ../kps/kp_gest_12_2/mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sum.o: ../kps/kp_gest_12_2/mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e8f4f80aba99ed2e632d050f7ee59d2d50256e3b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sum.o.d" -o ${OBJECTDIR}/_ext/1827875495/sum.o ../kps/kp_gest_12_2/mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o: ../kps/kp_gest_12_2/mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/93bd9e1d6cf4203214c077906c5fa9c975b50edf .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o ../kps/kp_gest_12_2/mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o: ../kps/kp_gest_12_2/mplabml/src/tr_sensor_magnitude.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a8d7a4af2b912d73714297717c9dc1dc1471d965 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o.d" -o ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o ../kps/kp_gest_12_2/mplabml/src/tr_sensor_magnitude.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_array.o: ../kps/kp_gest_12_2/mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3e08267e317d3c2984eacf757f344f8bef95cefd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_array.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_array.o ../kps/kp_gest_12_2/mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o: ../kps/kp_gest_12_2/mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d591529217b69078e0bf614c16509ba59327380 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o ../kps/kp_gest_12_2/mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o: ../kps/kp_gest_12_2/mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a37893b77a5550036423f9577e17a239fb8c4ba4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o ../kps/kp_gest_12_2/mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5362e3b1259918f18ee70b523668c412d95d82c1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dbcd6a532aaf1b3becd1ab46ea49e62e8da84ff3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bc039e62fa5319ff23fcab9612c536263759fce6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/70e7d8c27c4f14dc32b3dad5cfdc097a60c15502 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5e3ce1f0f861798302aee2d4ae6dfb11dba5a492 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ad0197c784f0d607d85ba5c8b1b7d26664ea3b7c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/881b15d4bf26fcabf3c69a0e81106fe9731fb494 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a66bc52bb31d4ab56eb347c4f4315ff2a3cf60ff .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6b208d130474f9f642a90e5b306e78825e234380 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5e7f8c509b33f51bdddff4e07dca4db409bd32ab .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8f2fc8b45f5fd09e6996eea66974ceaec362427d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a54e68743d5042ad870819b8bff40e4b64f8362c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a4e0fe2cadb720ea4ee9daf3a7d3cd973154af83 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fa38befcb2ce86165534265a2bd045aefa81c2e4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c78003ce8ccd7f0abf84563908493a1c134fe1b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o ../kps/kp_gest_12_2/mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f55bb37376bea4db24109aeae6b2a7cfac0a2e25 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4e7d57b60560c72d45583f6dd9762755e87a0a6c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b43c189234022915c129889071de8ae2e0cd0008 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o ../kps/kp_gest_12_2/mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a5916440fed2071b6b0483a9ec4594d9e9a06a11 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2cd33d8560d39f636b7b9ad1be4d82a85dc62799 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/71aefda582fdd3280ed751346ac940629e74ea7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o ../kps/kp_gest_12_2/mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6beea968efcb5632200db012842214d644ba3324 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o ../kps/kp_gest_12_2/mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/19744ddcfbe23afac1c3433535ed9ac505bca2d7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o ../kps/kp_gest_12_2/mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o: ../kps/kp_gest_12_2/mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/774a172122dbfed6fd39110de8f70582125371dd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o ../kps/kp_gest_12_2/mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	
${OBJECTDIR}/_ext/1360937237/ws2812.o: ../src/ws2812.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/649a6b843153cd5bc2b6f9dde551e68d60b22799 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ws2812.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ws2812.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ws2812.o.d" -o ${OBJECTDIR}/_ext/1360937237/ws2812.o ../src/ws2812.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o: ../kps/kp_gest_12_2/application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/269578eab154fca187cdf712a6d743b188b6735e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1059947605" 
	@${RM} ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/1059947605/sml_recognition_run.o ../kps/kp_gest_12_2/application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/array_contains.o: ../kps/kp_gest_12_2/mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a2aa4fe9ddc634bd3e76fd0c03d63c8341dd397b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/array_contains.o.d" -o ${OBJECTDIR}/_ext/1827875495/array_contains.o ../kps/kp_gest_12_2/mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/calc_area.o: ../kps/kp_gest_12_2/mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f592f2d39ce781c839956e4f829270c443e07003 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/calc_area.o.d" -o ${OBJECTDIR}/_ext/1827875495/calc_area.o ../kps/kp_gest_12_2/mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o: ../kps/kp_gest_12_2/mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dade6c7d3e66e6af43aac512ecfc71306933bffc .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/1827875495/column_to_row_complex.o ../kps/kp_gest_12_2/mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/crossing_rate.o: ../kps/kp_gest_12_2/mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/571fb2f986d7df0983b046ea9a29216b87ab16a0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/1827875495/crossing_rate.o ../kps/kp_gest_12_2/mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o: ../kps/kp_gest_12_2/mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c41f19d11db9ab0e9f334f17b4e71604c5b11efd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/1827875495/dsp_dtw_distance.o ../kps/kp_gest_12_2/mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o: ../kps/kp_gest_12_2/mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b250c4a8fc6a7478f31faa441c2692643a4bccf9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/1827875495/dsp_l1_distance.o ../kps/kp_gest_12_2/mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o: ../kps/kp_gest_12_2/mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8667447eca7a19c29075d498bc6c771432f23171 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/1827875495/dsp_lsup_distance.o ../kps/kp_gest_12_2/mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fftr.o: ../kps/kp_gest_12_2/mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c7912fe9ba3d9ec5ea6000d5e39fa00dec42367f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fftr.o.d" -o ${OBJECTDIR}/_ext/1827875495/fftr.o ../kps/kp_gest_12_2/mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fftr_utils.o: ../kps/kp_gest_12_2/mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a1958b30ed84520488c5ec872446bccd5579f234 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/1827875495/fftr_utils.o ../kps/kp_gest_12_2/mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o: ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_global_p2p_high_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b907bc2a45dedede4ee28c04237a74c893a4a455 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_global_p2p_high_frequency.o ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_global_p2p_high_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o: ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_min_max_sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8e92e1322ee7aa603fe7bbf0d452d30d8d985915 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_min_max_sum.o ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_min_max_sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o: ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_peak_to_peak.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a83de8780a75190cfbeffbdb53ceb7b6821e1675 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_amplitude_peak_to_peak.o ../kps/kp_gest_12_2/mplabml/src/fg_amplitude_peak_to_peak.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_absolute_area_high_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2950c6671b3455db658550e7fbff0cbccd715f7d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_absolute_area_high_frequency.o ../kps/kp_gest_12_2/mplabml/src/fg_area_absolute_area_high_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_power_spectrum_density.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/41690dd8eba01c57c814c4377795219c421da07d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_power_spectrum_density.o ../kps/kp_gest_12_2/mplabml/src/fg_area_power_spectrum_density.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6c915ce158ec4d0a1a54d20fac2e6701075a6be7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area.o ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o: ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/da815c8332c712099d8f316bababf055e4d2807a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_area_total_area_low_frequency.o ../kps/kp_gest_12_2/mplabml/src/fg_area_total_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_mean_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/177bd90cca89ff61671b4f6033c49b9394c75578 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_mean_difference.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_mean_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_min_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/64cdca02efd9ee45628d8a246dda45ddd083806d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_min_column.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_min_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_p2p_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f3055492c9582790cb90e5ac6792cad4aeaf3547 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_p2p_difference.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_p2p_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o: ../kps/kp_gest_12_2/mplabml/src/fg_cross_peak_location_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d45d96503e88ed21a276e6f8f77a8a3dac0f7b3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_cross_peak_location_difference.o ../kps/kp_gest_12_2/mplabml/src/fg_cross_peak_location_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_abs_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b635252bef2b94fcae73533b4fb1dc30274c02ac .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_abs_mean.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_abs_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_iqr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d3d3cedc636bc967da56851a73d0d44b4a69fcf3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_iqr.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_iqr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_kurtosis.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/85c74393b40bcad4b8203f4767643ba5bef5cf78 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_kurtosis.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_kurtosis.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_linear_regression.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a7133434fcbc90976b4b01ea1ce46dc817fbc73a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_linear_regression.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_linear_regression.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_minimum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/efaa63b4fb3111827508eb70db3ea4adadd6af1e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_minimum.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_minimum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct025.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9334c6e77a8207d95b5f06df6bbebaaf01f4faf6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct025.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct025.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct075.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c7039c6f2e997a435714d4ae5283701c084fd5c1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_pct075.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_pct075.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_skewness.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/929fc6a2ef33e2d6b412daf6e1334e5b3bf42fab .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_skewness.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_skewness.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_stdev.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/afece6dd14eb4945d72c92c06e1af255b7e8d888 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_stdev.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_stdev.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o: ../kps/kp_gest_12_2/mplabml/src/fg_stats_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f789fd642bb46729940a6cd8a0fec94da74ca5c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o.d" -o ${OBJECTDIR}/_ext/1827875495/fg_stats_variance.o ../kps/kp_gest_12_2/mplabml/src/fg_stats_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/fixlog.o: ../kps/kp_gest_12_2/mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d7cca77e11032d06c2d71a616501237091b81ae4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/fixlog.o.d" -o ${OBJECTDIR}/_ext/1827875495/fixlog.o ../kps/kp_gest_12_2/mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/imfcc.o: ../kps/kp_gest_12_2/mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3aa47e7fca79c21e88e2839fa4d0d60e8b63d3a6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/imfcc.o.d" -o ${OBJECTDIR}/_ext/1827875495/imfcc.o ../kps/kp_gest_12_2/mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb.o: ../kps/kp_gest_12_2/mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1ba4174420b68ec2afd494a7786db88a7bd09e7e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb.o ../kps/kp_gest_12_2/mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb_output.o: ../kps/kp_gest_12_2/mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9828a5365dc9d64a69ed9493e39ad137fd689c59 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb_output.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb_output.o ../kps/kp_gest_12_2/mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb_pipeline.o: ../kps/kp_gest_12_2/mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3d0d47f1fd1f6483105ac77a6ece105a7964ffaf .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb_pipeline.o ../kps/kp_gest_12_2/mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/kb_post_processing.o: ../kps/kp_gest_12_2/mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4ffed20a2c6be825c7b8bebbf1337793c0b9dd10 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/1827875495/kb_post_processing.o ../kps/kp_gest_12_2/mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o: ../kps/kp_gest_12_2/mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5b1a19e150750b452c1606b37af07f21ecd04b06 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/1827875495/max_min_high_low_freq.o ../kps/kp_gest_12_2/mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/ma_symmetric.o: ../kps/kp_gest_12_2/mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d723aaa413f63bd2474624511c0f9aedc5f04908 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/1827875495/ma_symmetric.o ../kps/kp_gest_12_2/mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/mean.o: ../kps/kp_gest_12_2/mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9a0c2f9d0069a2c3dc814a6384043d97bf546ae4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/mean.o ../kps/kp_gest_12_2/mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/pme.o: ../kps/kp_gest_12_2/mplabml/src/pme.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/520585088f6b32fd2f5d5fa51ae41067a7200ec7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/pme.o.d" -o ${OBJECTDIR}/_ext/1827875495/pme.o ../kps/kp_gest_12_2/mplabml/src/pme.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o: ../kps/kp_gest_12_2/mplabml/src/pme_trained_neurons.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/89a7670ce15255520b210ab11abecb07b987fd67 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o.d" -o ${OBJECTDIR}/_ext/1827875495/pme_trained_neurons.o ../kps/kp_gest_12_2/mplabml/src/pme_trained_neurons.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o: ../kps/kp_gest_12_2/mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/40901d14d90b8ab07b4d4fbfbcddf2a5f59f1a2f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/1827875495/ratio_diff_impl.o ../kps/kp_gest_12_2/mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/rb.o: ../kps/kp_gest_12_2/mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b29cf30d511ab317af3976b24eeb96a927169c39 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/rb.o.d" -o ${OBJECTDIR}/_ext/1827875495/rb.o ../kps/kp_gest_12_2/mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/save_sensor_data.o: ../kps/kp_gest_12_2/mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8a828b172a8ffa284ed30b43be894b14467ee433 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/1827875495/save_sensor_data.o ../kps/kp_gest_12_2/mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o: ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6b1991e17c6ee5e4fdc7383a4507396cf7af16cc .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_averaging.o ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o: ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c57c321e70f3802cd3425cfda08728d0160167bf .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/1827875495/sf_downsample_by_decimation.o ../kps/kp_gest_12_2/mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sg_windowing.o: ../kps/kp_gest_12_2/mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a2b2f79ecd139e06ccec2ed67032ede1e4bb2c56 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/1827875495/sg_windowing.o ../kps/kp_gest_12_2/mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sortarray.o: ../kps/kp_gest_12_2/mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6d86e4b77955415cce0d5cf9f6507e5c04b9cdf4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sortarray.o.d" -o ${OBJECTDIR}/_ext/1827875495/sortarray.o ../kps/kp_gest_12_2/mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sorted_copy.o: ../kps/kp_gest_12_2/mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c18bee48f20e9587f112bb2a04d3c894ae125a5b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/1827875495/sorted_copy.o ../kps/kp_gest_12_2/mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o: ../kps/kp_gest_12_2/mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5e867885271447c5fd5d813f981af059827184df .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/1827875495/stats_percentile_presorted.o ../kps/kp_gest_12_2/mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/stat_mean.o: ../kps/kp_gest_12_2/mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/215cf1f82230101644b835ca0fa0dec72c319cf0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/stat_mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/stat_mean.o ../kps/kp_gest_12_2/mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/stat_moment.o: ../kps/kp_gest_12_2/mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f9efbd52d5ba8410be660523610e216d2c875c72 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/stat_moment.o.d" -o ${OBJECTDIR}/_ext/1827875495/stat_moment.o ../kps/kp_gest_12_2/mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/std.o: ../kps/kp_gest_12_2/mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fcf934068ad6503c1fc0b298273fd02ca833ba77 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/std.o.d" -o ${OBJECTDIR}/_ext/1827875495/std.o ../kps/kp_gest_12_2/mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_absolute_average.o: ../kps/kp_gest_12_2/mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1dd41ee88358eb7a47be8854ea0783bd11f2be77 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_absolute_average.o ../kps/kp_gest_12_2/mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_average.o: ../kps/kp_gest_12_2/mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3e2fc8093cd2c912f43045f0a5786c5686c22fd2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_average.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_average.o ../kps/kp_gest_12_2/mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o: ../kps/kp_gest_12_2/mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/843d833c206cf36e53f70b4c8fe7f926c01518f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_high_pass_filter.o ../kps/kp_gest_12_2/mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/st_moving_average.o: ../kps/kp_gest_12_2/mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e5fee7f3786c3b4debeaa08b0fbd75f56710409d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/1827875495/st_moving_average.o ../kps/kp_gest_12_2/mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/sum.o: ../kps/kp_gest_12_2/mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a2a9996d217a706500afc99c6694f463ac54ecee .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/sum.o.d" -o ${OBJECTDIR}/_ext/1827875495/sum.o ../kps/kp_gest_12_2/mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o: ../kps/kp_gest_12_2/mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/996682d06a623675ddf2eea17c459e39ffd3284a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/1827875495/tr_min_max_scale.o ../kps/kp_gest_12_2/mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o: ../kps/kp_gest_12_2/mplabml/src/tr_sensor_magnitude.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c2cf56162958b18835caeb8df7b8ae1d396628fd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o.d" -o ${OBJECTDIR}/_ext/1827875495/tr_sensor_magnitude.o ../kps/kp_gest_12_2/mplabml/src/tr_sensor_magnitude.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_array.o: ../kps/kp_gest_12_2/mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e1095322530bd1ce1293339c46f803251e642920 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_array.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_array.o ../kps/kp_gest_12_2/mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o: ../kps/kp_gest_12_2/mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c2db29046ae3b83dce67379afda231f6eec62209 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_array_max_uint8.o ../kps/kp_gest_12_2/mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o: ../kps/kp_gest_12_2/mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fc99b842e7bde34d99be4f4dfdd758aa27968c81 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_bitwise_abs_val.o ../kps/kp_gest_12_2/mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/297c60634205214ca99398e7dcdc7e908f107691 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_absmean.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5623cefa8aadef04cd6bba3fdceea95974b4466a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abssum.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bbc5a800d493e29f240c37f5825df7d0c46b87d1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_abs_max.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7ffafd4ad2e19d3b18ba19ea8a37c338455f9aa0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_argmax.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f6324749fe202294a1b6effb60f8eec9a282738c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_autoscale.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/16a366eb6b90949e8b3524b210ed071c9472834a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_cumsum.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6bd44de25b97699b9cca759290e12a4654f16a88 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_max.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a4a57ee75ddf34557d94548bad5d01eac6b1603c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_mean.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5994bdba815141a38609819452410acf93c934c8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_median.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3946badc1211d5d386b1d8b39f3c7a16808d189d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8b8c692d9d3ecdfe7f4424fa2672b344332135d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_min_max.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/578c098c06eb215f993b9d80ff589c5e18458965 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_pass_threshold.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f5e3e0febacdf74d3bae263f202e749346ceacbe .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_std.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o: ../kps/kp_gest_12_2/mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3566ca501905c1535be15581c04f7987d88502b5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_buffer_variance.o ../kps/kp_gest_12_2/mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/34d72ee42fe4787b97ea983be6cbfbfb6dc5a128 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_crossing_rate.o ../kps/kp_gest_12_2/mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2d9437bb354636f921d7d785bc7696491c750aa9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_column.o ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/52caccb2fa01a4bcc53d03a6ef1fa8be1268d52e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_cross_difference.o ../kps/kp_gest_12_2/mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1b89acaeceea050cfc542c3b07ec0d81a1ed6f7b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_mean_crossing_rate.o ../kps/kp_gest_12_2/mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5e297af2d49eead3e6649386a24ebacc026a438b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_sigma.o ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fda0f13695de7e75e0cc8cd2c6d82321cd500a2f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_pct_time_over_threshold.o ../kps/kp_gest_12_2/mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ac97bc1f98482e68248181da0d418ebe8b0e9270 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_stats_max_min.o ../kps/kp_gest_12_2/mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9867028f6cc7ee7a729777c9b7877741020e1ebd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_total_area.o ../kps/kp_gest_12_2/mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o: ../kps/kp_gest_12_2/mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e4cce50d85de95fd914f8b46dbdcbf5de1925b65 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_model_total_energy.o ../kps/kp_gest_12_2/mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o: ../kps/kp_gest_12_2/mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/52a0d5a71c81ef4835290f4889d3cc188de550a2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827875495" 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/1827875495/utils_tr_sensor.o ../kps/kp_gest_12_2/mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
