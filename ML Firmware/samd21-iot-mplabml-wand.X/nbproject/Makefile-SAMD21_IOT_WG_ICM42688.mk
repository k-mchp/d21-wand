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
SOURCEFILES_QUOTED_IF_SPACED=../src/app_config/icm42688/icm42688_sensor.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c ../Icm426xx/Icm426xxDriver_HL.c ../Icm426xx/Icm426xxDriver_HL_apex.c ../Icm426xx/Icm426xxSelfTest.c ../Icm426xx/Icm426xxTransport.c ../src/main.c ../src/ringbuffer.c ../src/ws2812.c ../kps/kp_gest_13_1/mplabml/src/array_contains.c ../kps/kp_gest_13_1/mplabml/src/calc_area.c ../kps/kp_gest_13_1/mplabml/src/column_to_row_complex.c ../kps/kp_gest_13_1/mplabml/src/crossing_rate.c ../kps/kp_gest_13_1/mplabml/src/dsp_dtw_distance.c ../kps/kp_gest_13_1/mplabml/src/dsp_l1_distance.c ../kps/kp_gest_13_1/mplabml/src/dsp_lsup_distance.c ../kps/kp_gest_13_1/mplabml/src/fftr.c ../kps/kp_gest_13_1/mplabml/src/fftr_utils.c ../kps/kp_gest_13_1/mplabml/src/fg_area_absolute_area_high_frequency.c ../kps/kp_gest_13_1/mplabml/src/fg_area_total_area_low_frequency.c ../kps/kp_gest_13_1/mplabml/src/fg_cross_p2p_difference.c ../kps/kp_gest_13_1/mplabml/src/fg_cross_peak_location_difference.c ../kps/kp_gest_13_1/mplabml/src/fg_stats_abs_mean.c ../kps/kp_gest_13_1/mplabml/src/fg_stats_pct075.c ../kps/kp_gest_13_1/mplabml/src/fg_stats_skewness.c ../kps/kp_gest_13_1/mplabml/src/fixlog.c ../kps/kp_gest_13_1/mplabml/src/imfcc.c ../kps/kp_gest_13_1/mplabml/src/kb.c ../kps/kp_gest_13_1/mplabml/src/kb_output.c ../kps/kp_gest_13_1/mplabml/src/kb_pipeline.c ../kps/kp_gest_13_1/mplabml/src/kb_post_processing.c ../kps/kp_gest_13_1/mplabml/src/max_min_high_low_freq.c ../kps/kp_gest_13_1/mplabml/src/ma_symmetric.c ../kps/kp_gest_13_1/mplabml/src/mean.c ../kps/kp_gest_13_1/mplabml/src/ratio_diff_impl.c ../kps/kp_gest_13_1/mplabml/src/rb.c ../kps/kp_gest_13_1/mplabml/src/save_sensor_data.c ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_averaging.c ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_decimation.c ../kps/kp_gest_13_1/mplabml/src/sg_windowing.c ../kps/kp_gest_13_1/mplabml/src/sortarray.c ../kps/kp_gest_13_1/mplabml/src/sorted_copy.c ../kps/kp_gest_13_1/mplabml/src/stats_percentile_presorted.c ../kps/kp_gest_13_1/mplabml/src/stat_mean.c ../kps/kp_gest_13_1/mplabml/src/stat_moment.c ../kps/kp_gest_13_1/mplabml/src/std.c ../kps/kp_gest_13_1/mplabml/src/st_absolute_average.c ../kps/kp_gest_13_1/mplabml/src/st_average.c ../kps/kp_gest_13_1/mplabml/src/st_high_pass_filter.c ../kps/kp_gest_13_1/mplabml/src/st_moving_average.c ../kps/kp_gest_13_1/mplabml/src/sum.c ../kps/kp_gest_13_1/mplabml/src/tree_ensemble.c ../kps/kp_gest_13_1/mplabml/src/tree_ensemble_trained_models.c ../kps/kp_gest_13_1/mplabml/src/tr_min_max_scale.c ../kps/kp_gest_13_1/mplabml/src/tr_sensor_magnitude.c ../kps/kp_gest_13_1/mplabml/src/utils_array.c ../kps/kp_gest_13_1/mplabml/src/utils_array_max_uint8.c ../kps/kp_gest_13_1/mplabml/src/utils_bitwise_abs_val.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_absmean.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abssum.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abs_max.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_argmax.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_autoscale.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_cumsum.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_max.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_mean.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_median.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min_max.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_pass_threshold.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_std.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_variance.c ../kps/kp_gest_13_1/mplabml/src/utils_model_crossing_rate.c ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_column.c ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_difference.c ../kps/kp_gest_13_1/mplabml/src/utils_model_mean_crossing_rate.c ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_sigma.c ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_threshold.c ../kps/kp_gest_13_1/mplabml/src/utils_model_stats_max_min.c ../kps/kp_gest_13_1/mplabml/src/utils_model_total_area.c ../kps/kp_gest_13_1/mplabml/src/utils_model_total_energy.c ../kps/kp_gest_13_1/mplabml/src/utils_tr_sensor.c ../kps/kp_gest_13_1/application/sml_recognition_run.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ${OBJECTDIR}/_ext/503204096/plib_eic.o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ${OBJECTDIR}/_ext/1580876256/plib_port.o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ${OBJECTDIR}/_ext/223004715/plib_systick.o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ${OBJECTDIR}/_ext/1832905403/initialization.o ${OBJECTDIR}/_ext/1832905403/interrupts.o ${OBJECTDIR}/_ext/1832905403/exceptions.o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/1360937237/ws2812.o ${OBJECTDIR}/_ext/26920679/array_contains.o ${OBJECTDIR}/_ext/26920679/calc_area.o ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o ${OBJECTDIR}/_ext/26920679/crossing_rate.o ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o ${OBJECTDIR}/_ext/26920679/fftr.o ${OBJECTDIR}/_ext/26920679/fftr_utils.o ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o ${OBJECTDIR}/_ext/26920679/fixlog.o ${OBJECTDIR}/_ext/26920679/imfcc.o ${OBJECTDIR}/_ext/26920679/kb.o ${OBJECTDIR}/_ext/26920679/kb_output.o ${OBJECTDIR}/_ext/26920679/kb_pipeline.o ${OBJECTDIR}/_ext/26920679/kb_post_processing.o ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o ${OBJECTDIR}/_ext/26920679/ma_symmetric.o ${OBJECTDIR}/_ext/26920679/mean.o ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o ${OBJECTDIR}/_ext/26920679/rb.o ${OBJECTDIR}/_ext/26920679/save_sensor_data.o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/26920679/sg_windowing.o ${OBJECTDIR}/_ext/26920679/sortarray.o ${OBJECTDIR}/_ext/26920679/sorted_copy.o ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o ${OBJECTDIR}/_ext/26920679/stat_mean.o ${OBJECTDIR}/_ext/26920679/stat_moment.o ${OBJECTDIR}/_ext/26920679/std.o ${OBJECTDIR}/_ext/26920679/st_absolute_average.o ${OBJECTDIR}/_ext/26920679/st_average.o ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o ${OBJECTDIR}/_ext/26920679/st_moving_average.o ${OBJECTDIR}/_ext/26920679/sum.o ${OBJECTDIR}/_ext/26920679/tree_ensemble.o ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o ${OBJECTDIR}/_ext/26920679/utils_array.o ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o.d ${OBJECTDIR}/_ext/1750425231/plib_clock.o.d ${OBJECTDIR}/_ext/503204096/plib_eic.o.d ${OBJECTDIR}/_ext/1752574717/plib_evsys.o.d ${OBJECTDIR}/_ext/1580823105/plib_nvic.o.d ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1580876256/plib_port.o.d ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o.d ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/223004715/plib_systick.o.d ${OBJECTDIR}/_ext/399410062/plib_tc3.o.d ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832905403/initialization.o.d ${OBJECTDIR}/_ext/1832905403/interrupts.o.d ${OBJECTDIR}/_ext/1832905403/exceptions.o.d ${OBJECTDIR}/_ext/1832905403/startup_xc32.o.d ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o.d ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d ${OBJECTDIR}/_ext/1360937237/ws2812.o.d ${OBJECTDIR}/_ext/26920679/array_contains.o.d ${OBJECTDIR}/_ext/26920679/calc_area.o.d ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o.d ${OBJECTDIR}/_ext/26920679/crossing_rate.o.d ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o.d ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o.d ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o.d ${OBJECTDIR}/_ext/26920679/fftr.o.d ${OBJECTDIR}/_ext/26920679/fftr_utils.o.d ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o.d ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o.d ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o.d ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o.d ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o.d ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o.d ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o.d ${OBJECTDIR}/_ext/26920679/fixlog.o.d ${OBJECTDIR}/_ext/26920679/imfcc.o.d ${OBJECTDIR}/_ext/26920679/kb.o.d ${OBJECTDIR}/_ext/26920679/kb_output.o.d ${OBJECTDIR}/_ext/26920679/kb_pipeline.o.d ${OBJECTDIR}/_ext/26920679/kb_post_processing.o.d ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o.d ${OBJECTDIR}/_ext/26920679/ma_symmetric.o.d ${OBJECTDIR}/_ext/26920679/mean.o.d ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o.d ${OBJECTDIR}/_ext/26920679/rb.o.d ${OBJECTDIR}/_ext/26920679/save_sensor_data.o.d ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o.d ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o.d ${OBJECTDIR}/_ext/26920679/sg_windowing.o.d ${OBJECTDIR}/_ext/26920679/sortarray.o.d ${OBJECTDIR}/_ext/26920679/sorted_copy.o.d ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o.d ${OBJECTDIR}/_ext/26920679/stat_mean.o.d ${OBJECTDIR}/_ext/26920679/stat_moment.o.d ${OBJECTDIR}/_ext/26920679/std.o.d ${OBJECTDIR}/_ext/26920679/st_absolute_average.o.d ${OBJECTDIR}/_ext/26920679/st_average.o.d ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o.d ${OBJECTDIR}/_ext/26920679/st_moving_average.o.d ${OBJECTDIR}/_ext/26920679/sum.o.d ${OBJECTDIR}/_ext/26920679/tree_ensemble.o.d ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o.d ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o.d ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o.d ${OBJECTDIR}/_ext/26920679/utils_array.o.d ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o.d ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o.d ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o.d ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o.d ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o.d ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o.d ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o.d ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o.d ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o.d ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o.d ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o.d ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o.d ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o.d ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2048461350/icm42688_sensor.o ${OBJECTDIR}/_ext/1750425231/plib_clock.o ${OBJECTDIR}/_ext/503204096/plib_eic.o ${OBJECTDIR}/_ext/1752574717/plib_evsys.o ${OBJECTDIR}/_ext/1580823105/plib_nvic.o ${OBJECTDIR}/_ext/11470383/plib_nvmctrl.o ${OBJECTDIR}/_ext/1580876256/plib_port.o ${OBJECTDIR}/_ext/1014017276/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/177673482/plib_sercom5_usart.o ${OBJECTDIR}/_ext/223004715/plib_systick.o ${OBJECTDIR}/_ext/399410062/plib_tc3.o ${OBJECTDIR}/_ext/1357625803/xc32_monitor.o ${OBJECTDIR}/_ext/1832905403/initialization.o ${OBJECTDIR}/_ext/1832905403/interrupts.o ${OBJECTDIR}/_ext/1832905403/exceptions.o ${OBJECTDIR}/_ext/1832905403/startup_xc32.o ${OBJECTDIR}/_ext/1832905403/libc_syscalls.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL.o ${OBJECTDIR}/_ext/1341251756/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/_ext/1341251756/Icm426xxSelfTest.o ${OBJECTDIR}/_ext/1341251756/Icm426xxTransport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/1360937237/ws2812.o ${OBJECTDIR}/_ext/26920679/array_contains.o ${OBJECTDIR}/_ext/26920679/calc_area.o ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o ${OBJECTDIR}/_ext/26920679/crossing_rate.o ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o ${OBJECTDIR}/_ext/26920679/fftr.o ${OBJECTDIR}/_ext/26920679/fftr_utils.o ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o ${OBJECTDIR}/_ext/26920679/fixlog.o ${OBJECTDIR}/_ext/26920679/imfcc.o ${OBJECTDIR}/_ext/26920679/kb.o ${OBJECTDIR}/_ext/26920679/kb_output.o ${OBJECTDIR}/_ext/26920679/kb_pipeline.o ${OBJECTDIR}/_ext/26920679/kb_post_processing.o ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o ${OBJECTDIR}/_ext/26920679/ma_symmetric.o ${OBJECTDIR}/_ext/26920679/mean.o ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o ${OBJECTDIR}/_ext/26920679/rb.o ${OBJECTDIR}/_ext/26920679/save_sensor_data.o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/26920679/sg_windowing.o ${OBJECTDIR}/_ext/26920679/sortarray.o ${OBJECTDIR}/_ext/26920679/sorted_copy.o ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o ${OBJECTDIR}/_ext/26920679/stat_mean.o ${OBJECTDIR}/_ext/26920679/stat_moment.o ${OBJECTDIR}/_ext/26920679/std.o ${OBJECTDIR}/_ext/26920679/st_absolute_average.o ${OBJECTDIR}/_ext/26920679/st_average.o ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o ${OBJECTDIR}/_ext/26920679/st_moving_average.o ${OBJECTDIR}/_ext/26920679/sum.o ${OBJECTDIR}/_ext/26920679/tree_ensemble.o ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o ${OBJECTDIR}/_ext/26920679/utils_array.o ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o

# Source Files
SOURCEFILES=../src/app_config/icm42688/icm42688_sensor.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_ICM42688/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_ICM42688/initialization.c ../src/config/SAMD21_IOT_WG_ICM42688/interrupts.c ../src/config/SAMD21_IOT_WG_ICM42688/exceptions.c ../src/config/SAMD21_IOT_WG_ICM42688/startup_xc32.c ../src/config/SAMD21_IOT_WG_ICM42688/libc_syscalls.c ../Icm426xx/Icm426xxDriver_HL.c ../Icm426xx/Icm426xxDriver_HL_apex.c ../Icm426xx/Icm426xxSelfTest.c ../Icm426xx/Icm426xxTransport.c ../src/main.c ../src/ringbuffer.c ../src/ws2812.c ../kps/kp_gest_13_1/mplabml/src/array_contains.c ../kps/kp_gest_13_1/mplabml/src/calc_area.c ../kps/kp_gest_13_1/mplabml/src/column_to_row_complex.c ../kps/kp_gest_13_1/mplabml/src/crossing_rate.c ../kps/kp_gest_13_1/mplabml/src/dsp_dtw_distance.c ../kps/kp_gest_13_1/mplabml/src/dsp_l1_distance.c ../kps/kp_gest_13_1/mplabml/src/dsp_lsup_distance.c ../kps/kp_gest_13_1/mplabml/src/fftr.c ../kps/kp_gest_13_1/mplabml/src/fftr_utils.c ../kps/kp_gest_13_1/mplabml/src/fg_area_absolute_area_high_frequency.c ../kps/kp_gest_13_1/mplabml/src/fg_area_total_area_low_frequency.c ../kps/kp_gest_13_1/mplabml/src/fg_cross_p2p_difference.c ../kps/kp_gest_13_1/mplabml/src/fg_cross_peak_location_difference.c ../kps/kp_gest_13_1/mplabml/src/fg_stats_abs_mean.c ../kps/kp_gest_13_1/mplabml/src/fg_stats_pct075.c ../kps/kp_gest_13_1/mplabml/src/fg_stats_skewness.c ../kps/kp_gest_13_1/mplabml/src/fixlog.c ../kps/kp_gest_13_1/mplabml/src/imfcc.c ../kps/kp_gest_13_1/mplabml/src/kb.c ../kps/kp_gest_13_1/mplabml/src/kb_output.c ../kps/kp_gest_13_1/mplabml/src/kb_pipeline.c ../kps/kp_gest_13_1/mplabml/src/kb_post_processing.c ../kps/kp_gest_13_1/mplabml/src/max_min_high_low_freq.c ../kps/kp_gest_13_1/mplabml/src/ma_symmetric.c ../kps/kp_gest_13_1/mplabml/src/mean.c ../kps/kp_gest_13_1/mplabml/src/ratio_diff_impl.c ../kps/kp_gest_13_1/mplabml/src/rb.c ../kps/kp_gest_13_1/mplabml/src/save_sensor_data.c ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_averaging.c ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_decimation.c ../kps/kp_gest_13_1/mplabml/src/sg_windowing.c ../kps/kp_gest_13_1/mplabml/src/sortarray.c ../kps/kp_gest_13_1/mplabml/src/sorted_copy.c ../kps/kp_gest_13_1/mplabml/src/stats_percentile_presorted.c ../kps/kp_gest_13_1/mplabml/src/stat_mean.c ../kps/kp_gest_13_1/mplabml/src/stat_moment.c ../kps/kp_gest_13_1/mplabml/src/std.c ../kps/kp_gest_13_1/mplabml/src/st_absolute_average.c ../kps/kp_gest_13_1/mplabml/src/st_average.c ../kps/kp_gest_13_1/mplabml/src/st_high_pass_filter.c ../kps/kp_gest_13_1/mplabml/src/st_moving_average.c ../kps/kp_gest_13_1/mplabml/src/sum.c ../kps/kp_gest_13_1/mplabml/src/tree_ensemble.c ../kps/kp_gest_13_1/mplabml/src/tree_ensemble_trained_models.c ../kps/kp_gest_13_1/mplabml/src/tr_min_max_scale.c ../kps/kp_gest_13_1/mplabml/src/tr_sensor_magnitude.c ../kps/kp_gest_13_1/mplabml/src/utils_array.c ../kps/kp_gest_13_1/mplabml/src/utils_array_max_uint8.c ../kps/kp_gest_13_1/mplabml/src/utils_bitwise_abs_val.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_absmean.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abssum.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abs_max.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_argmax.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_autoscale.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_cumsum.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_max.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_mean.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_median.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min_max.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_pass_threshold.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_std.c ../kps/kp_gest_13_1/mplabml/src/utils_buffer_variance.c ../kps/kp_gest_13_1/mplabml/src/utils_model_crossing_rate.c ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_column.c ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_difference.c ../kps/kp_gest_13_1/mplabml/src/utils_model_mean_crossing_rate.c ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_sigma.c ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_threshold.c ../kps/kp_gest_13_1/mplabml/src/utils_model_stats_max_min.c ../kps/kp_gest_13_1/mplabml/src/utils_model_total_area.c ../kps/kp_gest_13_1/mplabml/src/utils_model_total_energy.c ../kps/kp_gest_13_1/mplabml/src/utils_tr_sensor.c ../kps/kp_gest_13_1/application/sml_recognition_run.c



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
	
${OBJECTDIR}/_ext/26920679/array_contains.o: ../kps/kp_gest_13_1/mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/99faaecf6825645c641c7f20066ce3db670816e4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/array_contains.o.d" -o ${OBJECTDIR}/_ext/26920679/array_contains.o ../kps/kp_gest_13_1/mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/calc_area.o: ../kps/kp_gest_13_1/mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1b0ac8e1e6d0d02a2e0a95b4caba3101aafc8f90 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/calc_area.o.d" -o ${OBJECTDIR}/_ext/26920679/calc_area.o ../kps/kp_gest_13_1/mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/column_to_row_complex.o: ../kps/kp_gest_13_1/mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9a3840c08f04a30238c414abfafe60c122aa1909 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o ../kps/kp_gest_13_1/mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/crossing_rate.o: ../kps/kp_gest_13_1/mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/43761f62966dc8e76247d71cbdf66350781b78a5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/26920679/crossing_rate.o ../kps/kp_gest_13_1/mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o: ../kps/kp_gest_13_1/mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/32ad47c3253aa7f00b7dfd75dcc6eb1053ed1b1d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o ../kps/kp_gest_13_1/mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o: ../kps/kp_gest_13_1/mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d133a2586f5e6fd2133d473dde1ab61b9e79eeea .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o ../kps/kp_gest_13_1/mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o: ../kps/kp_gest_13_1/mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2af22ec0c95cd3ebc9904e2a028fc1c189479ea .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o ../kps/kp_gest_13_1/mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fftr.o: ../kps/kp_gest_13_1/mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a715ede802326ace8e576a5609a5f9721165777f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fftr.o.d" -o ${OBJECTDIR}/_ext/26920679/fftr.o ../kps/kp_gest_13_1/mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fftr_utils.o: ../kps/kp_gest_13_1/mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6a0ecabcd4cbbe0de0ea423ba23783d2b3a0a926 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/26920679/fftr_utils.o ../kps/kp_gest_13_1/mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o: ../kps/kp_gest_13_1/mplabml/src/fg_area_absolute_area_high_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/89dd95ed894fba65f4fbc5b6f469453d328c2442 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o ../kps/kp_gest_13_1/mplabml/src/fg_area_absolute_area_high_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o: ../kps/kp_gest_13_1/mplabml/src/fg_area_total_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/732014a7f0f7926d414cc161a1a0d1d578358b79 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o ../kps/kp_gest_13_1/mplabml/src/fg_area_total_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o: ../kps/kp_gest_13_1/mplabml/src/fg_cross_p2p_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f6675b6883d7108b8245551503129ce7238da322 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o ../kps/kp_gest_13_1/mplabml/src/fg_cross_p2p_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o: ../kps/kp_gest_13_1/mplabml/src/fg_cross_peak_location_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/12de38665736da37491ebd681d21aec559462004 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o ../kps/kp_gest_13_1/mplabml/src/fg_cross_peak_location_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o: ../kps/kp_gest_13_1/mplabml/src/fg_stats_abs_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3d45e14269d5a51b2b7f531cf8ac3c31b9222af2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o ../kps/kp_gest_13_1/mplabml/src/fg_stats_abs_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o: ../kps/kp_gest_13_1/mplabml/src/fg_stats_pct075.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1ba1fad8286141d51549715f0f73324f71b02b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o ../kps/kp_gest_13_1/mplabml/src/fg_stats_pct075.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o: ../kps/kp_gest_13_1/mplabml/src/fg_stats_skewness.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/eddbda643847e627a76d342190adf6582b55fc8f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o ../kps/kp_gest_13_1/mplabml/src/fg_stats_skewness.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fixlog.o: ../kps/kp_gest_13_1/mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e0fde838912f1b69ee0b4ea1f5bd4fa902e4a44 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fixlog.o.d" -o ${OBJECTDIR}/_ext/26920679/fixlog.o ../kps/kp_gest_13_1/mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/imfcc.o: ../kps/kp_gest_13_1/mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/162918072cd7e8a06d70a86fcdcfceb404d8938b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/imfcc.o.d" -o ${OBJECTDIR}/_ext/26920679/imfcc.o ../kps/kp_gest_13_1/mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb.o: ../kps/kp_gest_13_1/mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/31d68ad270904ea65b841b83730b809f40e79921 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb.o.d" -o ${OBJECTDIR}/_ext/26920679/kb.o ../kps/kp_gest_13_1/mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb_output.o: ../kps/kp_gest_13_1/mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/42362f1406c92391ed2d46d126521d2fb3501f37 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb_output.o.d" -o ${OBJECTDIR}/_ext/26920679/kb_output.o ../kps/kp_gest_13_1/mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb_pipeline.o: ../kps/kp_gest_13_1/mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ee8017b1f85648c9de3f18e97559c069bd3be445 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/26920679/kb_pipeline.o ../kps/kp_gest_13_1/mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb_post_processing.o: ../kps/kp_gest_13_1/mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7bd3bbe8ae048f96eb1bd5c43e94159175b24de9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/26920679/kb_post_processing.o ../kps/kp_gest_13_1/mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o: ../kps/kp_gest_13_1/mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/def7e3513b26b48246f05f2b52f53ff58b20e6ab .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o ../kps/kp_gest_13_1/mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/ma_symmetric.o: ../kps/kp_gest_13_1/mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f967f193194ab3dcd5ba22a0c369d4774050143d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/26920679/ma_symmetric.o ../kps/kp_gest_13_1/mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/mean.o: ../kps/kp_gest_13_1/mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3269e282c403d4d7f47660ea4f0b39cf0bfcf4e9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/mean.o.d" -o ${OBJECTDIR}/_ext/26920679/mean.o ../kps/kp_gest_13_1/mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o: ../kps/kp_gest_13_1/mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4b455d0cba9bfcaf7964e87752dd53a17ae861c5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o ../kps/kp_gest_13_1/mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/rb.o: ../kps/kp_gest_13_1/mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dde211785629a8a56989d22270472e922013d561 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/rb.o.d" -o ${OBJECTDIR}/_ext/26920679/rb.o ../kps/kp_gest_13_1/mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/save_sensor_data.o: ../kps/kp_gest_13_1/mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a8ed33cf45c93072bf5dbd8f110c94e224b89e39 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/26920679/save_sensor_data.o ../kps/kp_gest_13_1/mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o: ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c187c70367916e4522d9d7255bf97cecb276dcc8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o: ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8e8541fa67514d9a0740930e822d3d73eb65caa7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sg_windowing.o: ../kps/kp_gest_13_1/mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bba08e6a584e882392ccd1f97e0b212a355c16f3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/26920679/sg_windowing.o ../kps/kp_gest_13_1/mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sortarray.o: ../kps/kp_gest_13_1/mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ca476bf25eccb8bb586b24ef9772cc15f146f129 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sortarray.o.d" -o ${OBJECTDIR}/_ext/26920679/sortarray.o ../kps/kp_gest_13_1/mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sorted_copy.o: ../kps/kp_gest_13_1/mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1c941c988c43c2cf29da107101f22bc8ff13a546 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/26920679/sorted_copy.o ../kps/kp_gest_13_1/mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o: ../kps/kp_gest_13_1/mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/46d459acc04579fa6446d5475543659b9300d16 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o ../kps/kp_gest_13_1/mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/stat_mean.o: ../kps/kp_gest_13_1/mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5149397520b2164e74ab6a1e91cbdb550411e518 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/stat_mean.o.d" -o ${OBJECTDIR}/_ext/26920679/stat_mean.o ../kps/kp_gest_13_1/mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/stat_moment.o: ../kps/kp_gest_13_1/mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2379b9bfa713018c41c40d2cfcf4f48654e521c7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/stat_moment.o.d" -o ${OBJECTDIR}/_ext/26920679/stat_moment.o ../kps/kp_gest_13_1/mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/std.o: ../kps/kp_gest_13_1/mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b6d3acd707fa7620695705f54046d75dc5237c0a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/std.o.d" -o ${OBJECTDIR}/_ext/26920679/std.o ../kps/kp_gest_13_1/mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_absolute_average.o: ../kps/kp_gest_13_1/mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/574c9186a14dd0420b139896f57eaa01453d097 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/26920679/st_absolute_average.o ../kps/kp_gest_13_1/mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_average.o: ../kps/kp_gest_13_1/mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5882c86418682bc0d4efd0a9c3db87c525d4c4a9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_average.o.d" -o ${OBJECTDIR}/_ext/26920679/st_average.o ../kps/kp_gest_13_1/mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o: ../kps/kp_gest_13_1/mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/23692e6682e4d156f76bd8f1e26473833318a4c7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o ../kps/kp_gest_13_1/mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_moving_average.o: ../kps/kp_gest_13_1/mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/de416b57b5ef81513345bee2d27aef4c9331047d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/26920679/st_moving_average.o ../kps/kp_gest_13_1/mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sum.o: ../kps/kp_gest_13_1/mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/663a94102596a8f2d21e8bf76923036677348b2e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sum.o.d" -o ${OBJECTDIR}/_ext/26920679/sum.o ../kps/kp_gest_13_1/mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tree_ensemble.o: ../kps/kp_gest_13_1/mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/213398107b08ebdf4cfa60f6a3e7e8ef1b0caa52 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/26920679/tree_ensemble.o ../kps/kp_gest_13_1/mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o: ../kps/kp_gest_13_1/mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/97eccb7663238bdc4599a81aa07e9f2336465d9c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o ../kps/kp_gest_13_1/mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o: ../kps/kp_gest_13_1/mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a2e6b04bdcc99d0a436b1228b496bb177177af4f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o ../kps/kp_gest_13_1/mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o: ../kps/kp_gest_13_1/mplabml/src/tr_sensor_magnitude.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/78619b7367740b0ffb115c6cb9fac2b634837d34 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o.d" -o ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o ../kps/kp_gest_13_1/mplabml/src/tr_sensor_magnitude.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_array.o: ../kps/kp_gest_13_1/mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/eb1fbe19904adf5fcfabfc95ce7f5dbed7fea61a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_array.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_array.o ../kps/kp_gest_13_1/mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o: ../kps/kp_gest_13_1/mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9e2bf0ab432f174312e4c061a6be95dbddbde103 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o ../kps/kp_gest_13_1/mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o: ../kps/kp_gest_13_1/mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/69d151c03f72fd912d072427791e4fdfb6dff1a7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o ../kps/kp_gest_13_1/mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b3d95ceffc950147112356b5988fedf1266c6738 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/95091ff039e88f0de883c95718155326657e794d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4c16f4af4925c7948cc468182c14a8936a7ebc89 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/2be47432d114c20e07698f1f55d974cf749468d7 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f8a56da5194ca4badd1daf289dda012744d46829 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/45546d1531cb6b363ba49e9dcc60d7d7f2230ff2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_max.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ec10322825114d82b2e6a8ce48159a549b694c30 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/5c846770d699ab276d99841e4387a7711ed63dfb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_median.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/67a98311de8a3b0dca96b715b04cfd4cab567f32 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_min.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8cf4a9e7ecb1778e36c854e8f896dc2885d1c05a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ee181dc8d689f31609e1d6789da4012cb703012b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/72d13fff99c3dcd3a5659bbe2008daed07771b28 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_std.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6a020942e1f4198e2e7891f65231bf32d28edb5b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fe5fb5b0360bd95053aaa645195e8615b21ed273 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/622c9b1cd33ba3f7d7d58eb61dca05775c0a57ae .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o ../kps/kp_gest_13_1/mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bc37fc9e50a30666b9cf4fab6bd6648695a22c77 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fff84b81bc2a650e8a2b322e95b18f424932a8b8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/703900846044956243164a5f2b6870d34a1aaa23 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o ../kps/kp_gest_13_1/mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6c25b959bcf1784902d7050e6e45c5026ffad7f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f4d88fc9d93ea856383cbab4bf5d546777b0cf32 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/62389fd5859128c36b45c34f5109cfa91c126fee .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o ../kps/kp_gest_13_1/mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_total_area.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3470509cf7f58a12bc7930480d76fd579e3571c5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o ../kps/kp_gest_13_1/mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/13253c37dc696ba60b13dc1f07207a068d3951ef .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o ../kps/kp_gest_13_1/mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o: ../kps/kp_gest_13_1/mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4580f57583ccc859dedddbcafdd6de5c834121f9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o ../kps/kp_gest_13_1/mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/741007211/sml_recognition_run.o: ../kps/kp_gest_13_1/application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1e94639c11df5c5d64989b0b116941afd7a0427e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/741007211" 
	@${RM} ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/741007211/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o ../kps/kp_gest_13_1/application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	
${OBJECTDIR}/_ext/26920679/array_contains.o: ../kps/kp_gest_13_1/mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f932903197dbff9b2870e168f5bfe4959bc6d6fb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/array_contains.o.d" -o ${OBJECTDIR}/_ext/26920679/array_contains.o ../kps/kp_gest_13_1/mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/calc_area.o: ../kps/kp_gest_13_1/mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9ae1e843d941f75f564a71b21cacebc1b9194734 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/calc_area.o.d" -o ${OBJECTDIR}/_ext/26920679/calc_area.o ../kps/kp_gest_13_1/mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/column_to_row_complex.o: ../kps/kp_gest_13_1/mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/8ccf4176842aa81ddb93ca6715fb48c855eaf69d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/26920679/column_to_row_complex.o ../kps/kp_gest_13_1/mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/crossing_rate.o: ../kps/kp_gest_13_1/mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a04f3845a5b16403a2577ccc210b6406d234e373 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/26920679/crossing_rate.o ../kps/kp_gest_13_1/mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o: ../kps/kp_gest_13_1/mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/974901255488a87d8dfe932c96005ddcdcca2ba9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/26920679/dsp_dtw_distance.o ../kps/kp_gest_13_1/mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o: ../kps/kp_gest_13_1/mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/52b2042b6c9d97bc630385f10e64139f0417b0c9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/26920679/dsp_l1_distance.o ../kps/kp_gest_13_1/mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o: ../kps/kp_gest_13_1/mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/855b98ff71dbc9990ff4248565350dfeb7fcb7b0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/26920679/dsp_lsup_distance.o ../kps/kp_gest_13_1/mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fftr.o: ../kps/kp_gest_13_1/mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/72e2f57a23508e79c42cc655f89b757046cf7e72 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fftr.o.d" -o ${OBJECTDIR}/_ext/26920679/fftr.o ../kps/kp_gest_13_1/mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fftr_utils.o: ../kps/kp_gest_13_1/mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/277cd1af44fc988f2e8ca768ee65cd8dfda83c8b .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/26920679/fftr_utils.o ../kps/kp_gest_13_1/mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o: ../kps/kp_gest_13_1/mplabml/src/fg_area_absolute_area_high_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/491074e66ebc00868c46cb7febed2f6609e6e76f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_area_absolute_area_high_frequency.o ../kps/kp_gest_13_1/mplabml/src/fg_area_absolute_area_high_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o: ../kps/kp_gest_13_1/mplabml/src/fg_area_total_area_low_frequency.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/bc1523930eb93cb7b737393f6e63153fea2ac3f2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_area_total_area_low_frequency.o ../kps/kp_gest_13_1/mplabml/src/fg_area_total_area_low_frequency.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o: ../kps/kp_gest_13_1/mplabml/src/fg_cross_p2p_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d00cae33c420320f92d8c25bba4d9e5f63b732c3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_cross_p2p_difference.o ../kps/kp_gest_13_1/mplabml/src/fg_cross_p2p_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o: ../kps/kp_gest_13_1/mplabml/src/fg_cross_peak_location_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c04b655519e5e4124c85b9802890ec861d3df192 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_cross_peak_location_difference.o ../kps/kp_gest_13_1/mplabml/src/fg_cross_peak_location_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o: ../kps/kp_gest_13_1/mplabml/src/fg_stats_abs_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7dafddbfa00e374c8a0447f45b8fef6fa90378a5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_stats_abs_mean.o ../kps/kp_gest_13_1/mplabml/src/fg_stats_abs_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o: ../kps/kp_gest_13_1/mplabml/src/fg_stats_pct075.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d986cd689ed918f00119508d8c8f97830bd351c1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_stats_pct075.o ../kps/kp_gest_13_1/mplabml/src/fg_stats_pct075.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o: ../kps/kp_gest_13_1/mplabml/src/fg_stats_skewness.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d026d9cafbce8fbd0f6ce3d549afcced44c76ce8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o.d" -o ${OBJECTDIR}/_ext/26920679/fg_stats_skewness.o ../kps/kp_gest_13_1/mplabml/src/fg_stats_skewness.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/fixlog.o: ../kps/kp_gest_13_1/mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d25385efb3e9b32cf178bca4a06b39e61f2bf480 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/fixlog.o.d" -o ${OBJECTDIR}/_ext/26920679/fixlog.o ../kps/kp_gest_13_1/mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/imfcc.o: ../kps/kp_gest_13_1/mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/cf25f3f124560664f4cfbef3f0fd1a58b9788db4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/imfcc.o.d" -o ${OBJECTDIR}/_ext/26920679/imfcc.o ../kps/kp_gest_13_1/mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb.o: ../kps/kp_gest_13_1/mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/52073b37e9dc4542ceb043679d1f94cce2e6ffae .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb.o.d" -o ${OBJECTDIR}/_ext/26920679/kb.o ../kps/kp_gest_13_1/mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb_output.o: ../kps/kp_gest_13_1/mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d8542f5aa87e86a5a0d925474a71046ec334ac4e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb_output.o.d" -o ${OBJECTDIR}/_ext/26920679/kb_output.o ../kps/kp_gest_13_1/mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb_pipeline.o: ../kps/kp_gest_13_1/mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fbe6dbd3b4d9570b82b90070e9ecf93665d12bee .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/26920679/kb_pipeline.o ../kps/kp_gest_13_1/mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/kb_post_processing.o: ../kps/kp_gest_13_1/mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/35e97cf8dfe6880f993215f0d251f4322bec84dd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/26920679/kb_post_processing.o ../kps/kp_gest_13_1/mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o: ../kps/kp_gest_13_1/mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/19342ed6f79819c19248c99bc37d8c72eb0352a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/26920679/max_min_high_low_freq.o ../kps/kp_gest_13_1/mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/ma_symmetric.o: ../kps/kp_gest_13_1/mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f243e7b762d1048e4bcc0342bc9d8ad136c4e1d2 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/26920679/ma_symmetric.o ../kps/kp_gest_13_1/mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/mean.o: ../kps/kp_gest_13_1/mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/c8f4c5357bfc3fb51b91eb78cbd8bab5e5505a5e .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/mean.o.d" -o ${OBJECTDIR}/_ext/26920679/mean.o ../kps/kp_gest_13_1/mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o: ../kps/kp_gest_13_1/mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dd6fa428112b2e3791d4672ffb5d4a75facb3dfd .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/26920679/ratio_diff_impl.o ../kps/kp_gest_13_1/mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/rb.o: ../kps/kp_gest_13_1/mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9580f7a6d2db4f1b9b45e7335b073102058135fa .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/rb.o.d" -o ${OBJECTDIR}/_ext/26920679/rb.o ../kps/kp_gest_13_1/mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/save_sensor_data.o: ../kps/kp_gest_13_1/mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/43e88c7e06b460e4e6e94d910d12c714510a8789 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/26920679/save_sensor_data.o ../kps/kp_gest_13_1/mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o: ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dad93b9ccb50ed353a4e0b38923c5113a08979c4 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_averaging.o ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o: ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1d5f00dd4f6a7dd544a82b302ba8a7f62578c1cc .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/26920679/sf_downsample_by_decimation.o ../kps/kp_gest_13_1/mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sg_windowing.o: ../kps/kp_gest_13_1/mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dcf19ebf66696819dd99af3c8e54639aa13ec4eb .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/26920679/sg_windowing.o ../kps/kp_gest_13_1/mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sortarray.o: ../kps/kp_gest_13_1/mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a2a1230faf0d39730b18202a53240ffb0d005d13 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sortarray.o.d" -o ${OBJECTDIR}/_ext/26920679/sortarray.o ../kps/kp_gest_13_1/mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sorted_copy.o: ../kps/kp_gest_13_1/mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/1af6e0c8c93c5e21554f39c39dd14ba53da69688 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/26920679/sorted_copy.o ../kps/kp_gest_13_1/mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o: ../kps/kp_gest_13_1/mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3310f6726de1d7c4adc3bf67ac80f50c0dfe50aa .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/26920679/stats_percentile_presorted.o ../kps/kp_gest_13_1/mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/stat_mean.o: ../kps/kp_gest_13_1/mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/55a62044b516adab3249341359fd377d0ecb7040 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/stat_mean.o.d" -o ${OBJECTDIR}/_ext/26920679/stat_mean.o ../kps/kp_gest_13_1/mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/stat_moment.o: ../kps/kp_gest_13_1/mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/3e54e6ccbb6cd164fee6d379becd60c4e5ca03f5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/stat_moment.o.d" -o ${OBJECTDIR}/_ext/26920679/stat_moment.o ../kps/kp_gest_13_1/mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/std.o: ../kps/kp_gest_13_1/mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dd38463b001072c7fedc1232210a42600a12ef3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/std.o.d" -o ${OBJECTDIR}/_ext/26920679/std.o ../kps/kp_gest_13_1/mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_absolute_average.o: ../kps/kp_gest_13_1/mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6d2ccc89189766e74309f3f1bcbf2ac282748e65 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/26920679/st_absolute_average.o ../kps/kp_gest_13_1/mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_average.o: ../kps/kp_gest_13_1/mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/76985f38f9c0490515141b24dfcec649aabc45ac .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_average.o.d" -o ${OBJECTDIR}/_ext/26920679/st_average.o ../kps/kp_gest_13_1/mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o: ../kps/kp_gest_13_1/mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ad81e5d0dc9bbf679cca7d5cf8db7ff68369b992 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/26920679/st_high_pass_filter.o ../kps/kp_gest_13_1/mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/st_moving_average.o: ../kps/kp_gest_13_1/mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e5951f39c50ebf7edd4c03c98caba580f72a3a86 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/26920679/st_moving_average.o ../kps/kp_gest_13_1/mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/sum.o: ../kps/kp_gest_13_1/mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/43b085411145d8fa1bc7c4c7cff0f26a050879a5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/sum.o.d" -o ${OBJECTDIR}/_ext/26920679/sum.o ../kps/kp_gest_13_1/mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tree_ensemble.o: ../kps/kp_gest_13_1/mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/31542d94b703070825afb597aade0ba6414572f5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/26920679/tree_ensemble.o ../kps/kp_gest_13_1/mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o: ../kps/kp_gest_13_1/mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/58e6e2154fb22d3b4deaea9214a2c8a193971087 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/26920679/tree_ensemble_trained_models.o ../kps/kp_gest_13_1/mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o: ../kps/kp_gest_13_1/mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fb4a929d1844c688eaea07bb90d8c3469680f6ca .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/26920679/tr_min_max_scale.o ../kps/kp_gest_13_1/mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o: ../kps/kp_gest_13_1/mplabml/src/tr_sensor_magnitude.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/fa649b3b40c942400098e2120a8992a5e03c0971 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o.d" -o ${OBJECTDIR}/_ext/26920679/tr_sensor_magnitude.o ../kps/kp_gest_13_1/mplabml/src/tr_sensor_magnitude.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_array.o: ../kps/kp_gest_13_1/mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6ed5745030c5e202bacc81a36d7ab228af6b54e3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_array.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_array.o ../kps/kp_gest_13_1/mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o: ../kps/kp_gest_13_1/mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/36791e193ca19de8ebeecdade9c7c4bd54516166 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_array_max_uint8.o ../kps/kp_gest_13_1/mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o: ../kps/kp_gest_13_1/mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/dc28a7d4f984334bd719788becdae6b2307bcad0 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_bitwise_abs_val.o ../kps/kp_gest_13_1/mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/57d27df54c2340ab6c50c49e40abe77405582e9d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_absmean.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/686dc38a4d513702df5be3b230fa359e38e7b9ce .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_abssum.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/190cb5a23a02703760cb7ce172745e14ba1fe331 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_abs_max.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4c6e5a3711b13dff49c0a1bfc70174645326a9c5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_argmax.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/64e10f91a18bcf0ddb306b60c348c5968ab2c3 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_autoscale.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f80ae61b97687d5c448fb0446b1595de2ce1cd29 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_cumsum.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_max.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9a579d9fd490d3fb81ea27c01237c044d4c3b780 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_max.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/918c25ae214dde0a393567ca73667f0ddb1b74e8 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_mean.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_median.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6364fe7f27d9d7aa7b68f5d1675dbf8bd9caf6b6 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_median.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_min.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/45dc558b3386876845d3eb36e51d869dcf93aef1 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_min.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/b68ec9e2469ad303cef3480741c6e3e423f2d4dc .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_min_max.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/f76d7c4c8c8b0dabe2207d2fbb1f7b68450371fa .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_pass_threshold.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_std.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/a414d68b74294089af90e119ac1d4f21fa333262 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_std.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o: ../kps/kp_gest_13_1/mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/4cf47b5e3724ffcf3d9a3b851f60e9dbbb97919c .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_buffer_variance.o ../kps/kp_gest_13_1/mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/ef2c851d3d85f3a0a550c25a48e9378e8a666ce9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_crossing_rate.o ../kps/kp_gest_13_1/mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/90739fc997e52f51a7db79a05caad22e96a8e93d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_cross_column.o ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/d2ec954b81a639a3f0fd9066c972ba7c1b44920f .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_cross_difference.o ../kps/kp_gest_13_1/mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6b0ba2a9789ce22e06e781a5b486e0dbbd92c920 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_mean_crossing_rate.o ../kps/kp_gest_13_1/mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/7e163de93ca25f9cb0d3ee79b755ae121d5b8036 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_sigma.o ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/e51cc0d004868eb387fc49f54cdc9cf66c884b1a .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_pct_time_over_threshold.o ../kps/kp_gest_13_1/mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/246f4f693dbdb7f568c360b8f464915229ef7e23 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_stats_max_min.o ../kps/kp_gest_13_1/mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_total_area.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/336161f252b5d685df2d834954e156ef579da1e9 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_total_area.o ../kps/kp_gest_13_1/mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o: ../kps/kp_gest_13_1/mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9e23f52ac9d4a3114187fa26159a9a74629dfd76 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_model_total_energy.o ../kps/kp_gest_13_1/mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o: ../kps/kp_gest_13_1/mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/9f4c08b9e2693775a598249e06278712d1ce616d .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/26920679" 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/26920679/utils_tr_sensor.o ../kps/kp_gest_13_1/mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/741007211/sml_recognition_run.o: ../kps/kp_gest_13_1/application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_ICM42688/6c1cb930595dd028b305eea0992975c2e3f2e9e5 .generated_files/flags/SAMD21_IOT_WG_ICM42688/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/741007211" 
	@${RM} ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../Icm426xx" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_ICM42688=1 -DICM42688 -I"../src" -I"../src/config/SAMD21_IOT_WG_ICM42688" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/741007211/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/741007211/sml_recognition_run.o ../kps/kp_gest_13_1/application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_ICM42688=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
