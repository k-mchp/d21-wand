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
ifeq "$(wildcard nbproject/Makefile-local-SAMD21_IOT_WG_BMI160.mk)" "nbproject/Makefile-local-SAMD21_IOT_WG_BMI160.mk"
include nbproject/Makefile-local-SAMD21_IOT_WG_BMI160.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=SAMD21_IOT_WG_BMI160
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
SOURCEFILES_QUOTED_IF_SPACED=../src/app_config/bmi160/bmi160_sensor.c ../application/sml_recognition_run.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../mplabml/src/array_contains.c ../mplabml/src/calc_area.c ../mplabml/src/column_to_row_complex.c ../mplabml/src/crossing_rate.c ../mplabml/src/dsp_dtw_distance.c ../mplabml/src/dsp_l1_distance.c ../mplabml/src/dsp_lsup_distance.c ../mplabml/src/fftr.c ../mplabml/src/fftr_utils.c ../mplabml/src/fg_frequency_mfe.c ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c ../mplabml/src/fg_frequency_power_spectrum.c ../mplabml/src/fg_frequency_spectral_entropy.c ../mplabml/src/fg_peak_frequencies.c ../mplabml/src/fixlog.c ../mplabml/src/imfcc.c ../mplabml/src/kb.c ../mplabml/src/kb_output.c ../mplabml/src/kb_pipeline.c ../mplabml/src/kb_post_processing.c ../mplabml/src/max_min_high_low_freq.c ../mplabml/src/ma_symmetric.c ../mplabml/src/mean.c ../mplabml/src/ratio_diff_impl.c ../mplabml/src/rb.c ../mplabml/src/save_sensor_data.c ../mplabml/src/sf_downsample_by_averaging.c ../mplabml/src/sf_downsample_by_decimation.c ../mplabml/src/sg_windowing.c ../mplabml/src/sortarray.c ../mplabml/src/sorted_copy.c ../mplabml/src/stats_percentile_presorted.c ../mplabml/src/stat_mean.c ../mplabml/src/stat_moment.c ../mplabml/src/std.c ../mplabml/src/st_absolute_average.c ../mplabml/src/st_average.c ../mplabml/src/st_high_pass_filter.c ../mplabml/src/st_moving_average.c ../mplabml/src/sum.c ../mplabml/src/tree_ensemble.c ../mplabml/src/tree_ensemble_trained_models.c ../mplabml/src/tr_min_max_scale.c ../mplabml/src/utils_array.c ../mplabml/src/utils_array_max_uint8.c ../mplabml/src/utils_bitwise_abs_val.c ../mplabml/src/utils_buffer_absmean.c ../mplabml/src/utils_buffer_abssum.c ../mplabml/src/utils_buffer_abs_max.c ../mplabml/src/utils_buffer_argmax.c ../mplabml/src/utils_buffer_autoscale.c ../mplabml/src/utils_buffer_cumsum.c ../mplabml/src/utils_buffer_max.c ../mplabml/src/utils_buffer_mean.c ../mplabml/src/utils_buffer_median.c ../mplabml/src/utils_buffer_min.c ../mplabml/src/utils_buffer_min_max.c ../mplabml/src/utils_buffer_pass_threshold.c ../mplabml/src/utils_buffer_std.c ../mplabml/src/utils_buffer_variance.c ../mplabml/src/utils_model_crossing_rate.c ../mplabml/src/utils_model_cross_column.c ../mplabml/src/utils_model_cross_difference.c ../mplabml/src/utils_model_mean_crossing_rate.c ../mplabml/src/utils_model_pct_time_over_sigma.c ../mplabml/src/utils_model_pct_time_over_threshold.c ../mplabml/src/utils_model_stats_max_min.c ../mplabml/src/utils_model_total_area.c ../mplabml/src/utils_model_total_energy.c ../mplabml/src/utils_tr_sensor.c ../src/main.c ../src/ringbuffer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/165749039/array_contains.o ${OBJECTDIR}/_ext/165749039/calc_area.o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ${OBJECTDIR}/_ext/165749039/fftr.o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o ${OBJECTDIR}/_ext/165749039/fixlog.o ${OBJECTDIR}/_ext/165749039/imfcc.o ${OBJECTDIR}/_ext/165749039/kb.o ${OBJECTDIR}/_ext/165749039/kb_output.o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ${OBJECTDIR}/_ext/165749039/mean.o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ${OBJECTDIR}/_ext/165749039/rb.o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ${OBJECTDIR}/_ext/165749039/sortarray.o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ${OBJECTDIR}/_ext/165749039/stat_mean.o ${OBJECTDIR}/_ext/165749039/stat_moment.o ${OBJECTDIR}/_ext/165749039/std.o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ${OBJECTDIR}/_ext/165749039/st_average.o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ${OBJECTDIR}/_ext/165749039/sum.o ${OBJECTDIR}/_ext/165749039/tree_ensemble.o ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ${OBJECTDIR}/_ext/165749039/utils_array.o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d ${OBJECTDIR}/_ext/1301132388/bmi160.o.d ${OBJECTDIR}/_ext/913417575/plib_clock.o.d ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/445497352/plib_port.o.d ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/982468349/plib_systick.o.d ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d ${OBJECTDIR}/_ext/1503348509/initialization.o.d ${OBJECTDIR}/_ext/1503348509/interrupts.o.d ${OBJECTDIR}/_ext/1503348509/exceptions.o.d ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d ${OBJECTDIR}/_ext/165749039/array_contains.o.d ${OBJECTDIR}/_ext/165749039/calc_area.o.d ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d ${OBJECTDIR}/_ext/165749039/fftr.o.d ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d ${OBJECTDIR}/_ext/165749039/fixlog.o.d ${OBJECTDIR}/_ext/165749039/imfcc.o.d ${OBJECTDIR}/_ext/165749039/kb.o.d ${OBJECTDIR}/_ext/165749039/kb_output.o.d ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d ${OBJECTDIR}/_ext/165749039/mean.o.d ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d ${OBJECTDIR}/_ext/165749039/rb.o.d ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d ${OBJECTDIR}/_ext/165749039/sortarray.o.d ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d ${OBJECTDIR}/_ext/165749039/stat_mean.o.d ${OBJECTDIR}/_ext/165749039/stat_moment.o.d ${OBJECTDIR}/_ext/165749039/std.o.d ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d ${OBJECTDIR}/_ext/165749039/st_average.o.d ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d ${OBJECTDIR}/_ext/165749039/sum.o.d ${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d ${OBJECTDIR}/_ext/165749039/utils_array.o.d ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/165749039/array_contains.o ${OBJECTDIR}/_ext/165749039/calc_area.o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ${OBJECTDIR}/_ext/165749039/fftr.o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o ${OBJECTDIR}/_ext/165749039/fixlog.o ${OBJECTDIR}/_ext/165749039/imfcc.o ${OBJECTDIR}/_ext/165749039/kb.o ${OBJECTDIR}/_ext/165749039/kb_output.o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ${OBJECTDIR}/_ext/165749039/mean.o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ${OBJECTDIR}/_ext/165749039/rb.o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ${OBJECTDIR}/_ext/165749039/sortarray.o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ${OBJECTDIR}/_ext/165749039/stat_mean.o ${OBJECTDIR}/_ext/165749039/stat_moment.o ${OBJECTDIR}/_ext/165749039/std.o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ${OBJECTDIR}/_ext/165749039/st_average.o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ${OBJECTDIR}/_ext/165749039/sum.o ${OBJECTDIR}/_ext/165749039/tree_ensemble.o ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ${OBJECTDIR}/_ext/165749039/utils_array.o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o

# Source Files
SOURCEFILES=../src/app_config/bmi160/bmi160_sensor.c ../application/sml_recognition_run.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../mplabml/src/array_contains.c ../mplabml/src/calc_area.c ../mplabml/src/column_to_row_complex.c ../mplabml/src/crossing_rate.c ../mplabml/src/dsp_dtw_distance.c ../mplabml/src/dsp_l1_distance.c ../mplabml/src/dsp_lsup_distance.c ../mplabml/src/fftr.c ../mplabml/src/fftr_utils.c ../mplabml/src/fg_frequency_mfe.c ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c ../mplabml/src/fg_frequency_power_spectrum.c ../mplabml/src/fg_frequency_spectral_entropy.c ../mplabml/src/fg_peak_frequencies.c ../mplabml/src/fixlog.c ../mplabml/src/imfcc.c ../mplabml/src/kb.c ../mplabml/src/kb_output.c ../mplabml/src/kb_pipeline.c ../mplabml/src/kb_post_processing.c ../mplabml/src/max_min_high_low_freq.c ../mplabml/src/ma_symmetric.c ../mplabml/src/mean.c ../mplabml/src/ratio_diff_impl.c ../mplabml/src/rb.c ../mplabml/src/save_sensor_data.c ../mplabml/src/sf_downsample_by_averaging.c ../mplabml/src/sf_downsample_by_decimation.c ../mplabml/src/sg_windowing.c ../mplabml/src/sortarray.c ../mplabml/src/sorted_copy.c ../mplabml/src/stats_percentile_presorted.c ../mplabml/src/stat_mean.c ../mplabml/src/stat_moment.c ../mplabml/src/std.c ../mplabml/src/st_absolute_average.c ../mplabml/src/st_average.c ../mplabml/src/st_high_pass_filter.c ../mplabml/src/st_moving_average.c ../mplabml/src/sum.c ../mplabml/src/tree_ensemble.c ../mplabml/src/tree_ensemble_trained_models.c ../mplabml/src/tr_min_max_scale.c ../mplabml/src/utils_array.c ../mplabml/src/utils_array_max_uint8.c ../mplabml/src/utils_bitwise_abs_val.c ../mplabml/src/utils_buffer_absmean.c ../mplabml/src/utils_buffer_abssum.c ../mplabml/src/utils_buffer_abs_max.c ../mplabml/src/utils_buffer_argmax.c ../mplabml/src/utils_buffer_autoscale.c ../mplabml/src/utils_buffer_cumsum.c ../mplabml/src/utils_buffer_max.c ../mplabml/src/utils_buffer_mean.c ../mplabml/src/utils_buffer_median.c ../mplabml/src/utils_buffer_min.c ../mplabml/src/utils_buffer_min_max.c ../mplabml/src/utils_buffer_pass_threshold.c ../mplabml/src/utils_buffer_std.c ../mplabml/src/utils_buffer_variance.c ../mplabml/src/utils_model_crossing_rate.c ../mplabml/src/utils_model_cross_column.c ../mplabml/src/utils_model_cross_difference.c ../mplabml/src/utils_model_mean_crossing_rate.c ../mplabml/src/utils_model_pct_time_over_sigma.c ../mplabml/src/utils_model_pct_time_over_threshold.c ../mplabml/src/utils_model_stats_max_min.c ../mplabml/src/utils_model_total_area.c ../mplabml/src/utils_model_total_energy.c ../mplabml/src/utils_tr_sensor.c ../src/main.c ../src/ringbuffer.c



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
	${MAKE}  -f nbproject/Makefile-SAMD21_IOT_WG_BMI160.mk ${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\SAMD21_IOT_WG_BMI160\ATSAMD21G18A.ld"
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
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d46271cb67bb0bec92b8a703ba1dcf78fc195e21 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/933676929/sml_recognition_run.o: ../application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fc3f7243c86411c08dc23cc3572b68b9ba0214c9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933676929" 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ../application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6298caca220c75de67d51601d083d99e6a25f4b1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/15544bbf1329ff3e86492d29d50bb476044af1f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8ae57c42f063aa9a583b8109eb6b28da8e086b7e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/13e1482ee04d26fa822dd6848a66e8c27a316ff6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/be57686bc9c2a04a156a997b6cea4c92f1fefb74 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b1580f6f87320d2be70e7b3b320c6af1db6b37a8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e4dadd6c61e2eecb86643290e9d771fae85e8162 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a515478d0d808dfd64c77158a74d12c7df07c48a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4d398a9f9ce29042073ece849ff3fbaf1a894a07 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b10bbdc028a023bde1310d8a8cb1e49ea6df0d20 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1cc3b194cfff7889cafc4ddb5fd99434202a3fd7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c012d591dd922f36a397fcb664e5fcf55fe08905 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c09007b7aae6a91b5183557791aa71acb1f10679 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/49bbe9d6bc19a8963000ae5d04db7ea6c2008ab4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4444ba285e6f04ba52e821a6081013e59318c1bf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/83dbc6e028db7e8aea5e0595bdea4e41e42963f6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/39f7db94cc7313105bdb893f6df838497cbe09d6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/array_contains.o: ../mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/50816f4d1a6505ce8acaded6c5f0d8dba2e71003 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/array_contains.o.d" -o ${OBJECTDIR}/_ext/165749039/array_contains.o ../mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/calc_area.o: ../mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/71b6f9f536f6acd21396f61775bcb0366b204554 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/calc_area.o.d" -o ${OBJECTDIR}/_ext/165749039/calc_area.o ../mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/column_to_row_complex.o: ../mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e59ccfb763b3d28eaccd481661b6bbf80e2f0acd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ../mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/crossing_rate.o: ../mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5bdd0d4577efdbe9e57dd3f40f5b0f1c72cfc526 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ../mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o: ../mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/650e4cf0c9dee4a441cd497056fab6ffc769d6ef .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ../mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o: ../mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/843f5339772f8ea6bdff612ec9bc0b71daa9b869 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ../mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o: ../mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f619af2f0707e3ddba8693bec21e5bcd8eea4d0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ../mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr.o: ../mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/504dbd6f1047da94a13d46a8c92fd7904633c91 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr.o ../mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr_utils.o: ../mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e0f1ca8b0b4628efba9a8af13378d2e77e1b7cd1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ../mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o: ../mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cbf2b4d5effd86a4f2cf93bde2be19dcaf7f800 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ../mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o: ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d6cc06acfe53ac769729ebf96c80cbed0b654f8a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o: ../mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ecc1bc055d593afe11317231ec5acae89184756e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ../mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o: ../mplabml/src/fg_frequency_spectral_entropy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ad170ffa36a059f21efafa970935068b53bf0df8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o ../mplabml/src/fg_frequency_spectral_entropy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o: ../mplabml/src/fg_peak_frequencies.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c3371bfcadde7aafc318aba239ba81ee70940a92 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o ../mplabml/src/fg_peak_frequencies.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fixlog.o: ../mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/502eb21138bd897d58c79d08cc310f0298ead03c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fixlog.o.d" -o ${OBJECTDIR}/_ext/165749039/fixlog.o ../mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/imfcc.o: ../mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/41b4405d1da1b4333d0ca3139b092df58958874b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/imfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/imfcc.o ../mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb.o: ../mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/166fc92d0d2fb508e96f728d01d731f0a604d436 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb.o.d" -o ${OBJECTDIR}/_ext/165749039/kb.o ../mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_output.o: ../mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ad150b1fd4fa85c55b0c3c21faf8d8303d0c3477 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_output.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_output.o ../mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_pipeline.o: ../mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/df965d7fabcc8d2450ff51285bca3049dc0c6719 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ../mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_post_processing.o: ../mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dbf77e923e2576ed272c109eb82916932395fce4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ../mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o: ../mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/30ea61a2700cee58d1c341654586e78fe3a516d8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ../mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ma_symmetric.o: ../mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d87c2fd6b4fa5b510c1bb875d5b7d616a2a74f2f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ../mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/mean.o: ../mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/542539a07583185be1144955d4e6419dd0a438bd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/mean.o.d" -o ${OBJECTDIR}/_ext/165749039/mean.o ../mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o: ../mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/91faa6043d12a4aec86490ffa8a19d3ca4fa5e9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ../mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/rb.o: ../mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/93dacbfe2d0fd7b042aeb591bc782e1a4e05ef59 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/rb.o.d" -o ${OBJECTDIR}/_ext/165749039/rb.o ../mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/save_sensor_data.o: ../mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b9317fb3a133d2040382d38ca84f302fef2c22e1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ../mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o: ../mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/58db8de849e6adc6b3623233f727ccf98da71676 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ../mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o: ../mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fa187613252f10ed5dc3fe8beaa08aa57c56bea4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ../mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sg_windowing.o: ../mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/763780d94d777d096c6d496cd6888ae54573fd75 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ../mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sortarray.o: ../mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bb3dc03e286018bf9a600112fb989b4fc94598be .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sortarray.o.d" -o ${OBJECTDIR}/_ext/165749039/sortarray.o ../mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sorted_copy.o: ../mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/79994365fa39e64d569143f53c454710e17cdea9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ../mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o: ../mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bd59364d09fdc9df618b4850fbcea3a49ba470c2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ../mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_mean.o: ../mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ebef6e5ac34172ab3ea6371837bb5f1d4eec5862 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_mean.o ../mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_moment.o: ../mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/668619d4f410a26f11777cfdaab4ca7d60ef566c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_moment.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_moment.o ../mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/std.o: ../mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/45b5198a0ee52b73f51be2f47ca9a6026ebdc02 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/std.o.d" -o ${OBJECTDIR}/_ext/165749039/std.o ../mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_absolute_average.o: ../mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7be57f0a10d7d8020813d6bb47231e0903608884 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ../mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_average.o: ../mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/38d49d256d6f0938312787c1825bc11fc458e59d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_average.o ../mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o: ../mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c8e7d79249350373359d9f518654aaf3c41b1ada .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ../mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_moving_average.o: ../mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d86d2d2e91600614d8632f310b6b222e52ecf9a7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ../mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sum.o: ../mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/697fc1120d90342606417790f9cd02458ce2eebf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sum.o.d" -o ${OBJECTDIR}/_ext/165749039/sum.o ../mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble.o: ../mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dcbe66702d7680cbd34d53bd1e411ad56dc182fb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble.o ../mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o: ../mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/169bdf5a6d31b926b1c83772c9993bc2f07f8364 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o ../mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o: ../mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2200668ab1b70ae4c0ce5b52fcd929c4e9fd8b80 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ../mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array.o: ../mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ae8290e1ffea88d1c11d51f889ca8a251ec8cfe9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array.o ../mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o: ../mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/da18d307644b6678491869b935c868f2692085ad .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ../mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o: ../mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1b3ddf58c00aa4395b21dab5ae6063d85fc570e9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ../mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o: ../mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ea0a4015799725850c0ec6eb86ad1a737af81c97 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ../mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o: ../mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/589691a1290907b39aa5430e2658fb7b99f1d6ce .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ../mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o: ../mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3979c39b2b7e66e17587127a3228c4bb99b75d3c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ../mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o: ../mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6ab4d0294736affe24612ae6dd7bed2a6519eb89 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ../mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o: ../mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b5769434ded04bdfaac2a0039a892f579af14886 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ../mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o: ../mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/18c98af48dec894e557a6575c869d41d9fb109c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ../mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_max.o: ../mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/13962c25dc3366a94817e8c86ed54bc3983819c5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ../mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o: ../mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c4f7fe7abdc29606cce81dbe2f81ef55564b5bea .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ../mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_median.o: ../mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c5b28b5614fac8cd406e342d7bda89b70b88b95a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ../mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min.o: ../mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2ecc3f084a71ece17f6678cb5664b7687fc0fb2c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ../mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o: ../mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4a0e4c641643a0f5861cd28aaa7ffd5971c154d6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ../mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o: ../mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cd43e2355af82b1fa7d94b5bed46cce2bffddea7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ../mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_std.o: ../mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/88003d69759279ceaf2d5a9ac92841fe8264ec6b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ../mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o: ../mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/327518e090e29c98b3f2624cf7d110b09a81a1ca .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ../mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o: ../mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dcdbcb53d49013bab7aa1b835108390f5519dd95 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ../mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o: ../mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4b8dc8c9adc289af4763c8d03eb92e92cfcebc13 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ../mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o: ../mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9c6ecac07b5939e7c068a3e917cc9ffe0a000979 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ../mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o: ../mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f9c29637088e9cf61e6eae68de9e9a959c6e7841 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ../mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o: ../mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2d6618bcf2ee9b98df23acff73fb68a703fcecd6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ../mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o: ../mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/24e7843f221763bc997f6c1a7099d7bad340e06a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ../mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o: ../mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/18a9298e933be98afcd2ead68c24c2274f1b3e7a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ../mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_area.o: ../mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b9da0a2be2fcab89d30dfaddbb9779216aa06469 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ../mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o: ../mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b81c47f8b8d7d531e63940df88b4750c067860fd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ../mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o: ../mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/333177fb6f914d6af657d102852b06f453041f38 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ../mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5f375ad71e9907ae33e20037d8614a73591766b7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e5c4ac0919d24397fd0c401b5705898d6bbd5e74 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2b7df241a18357a519cc35d37f0a64b56787d27b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/933676929/sml_recognition_run.o: ../application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e4b0c1ff49ab4ad5dce7dfcc89a6f56a882125b8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933676929" 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ../application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/67aed614829dd1862da8a8c1c59209bc8f046de1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4058b933eac195f0a195694391558ecbed64c2c1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f874e38c1b9ed0a5e0d8a60276fb0b836f4496b6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d491e33838eb0b02549b1ca33cb3c10fe2f9ed4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/da2d10aaddadab8ed88e4c259a0522ba77116096 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ed465751294dd463abd35f76cb57fcceb7d3e200 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6edd75846c447434cec4ac069d7e5aec2bf5a7c1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9c13e9256f0fb150b42337d4d8ece97ce06a09b8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d065a6485211d8846f509a8276849ff9c177f974 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/baf53fbf8bd1b1b958be37a5d71b8b8e93e0e25b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/36d87c2b54595db0e6cca2d7da37b28886690b9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/25ed81a022f7017afa9e3bfd429367d75c4f2c29 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ce61ac0a92d5a2746d4ae0035b972871688721fb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1c7651eb2210dcae42243b49416955499f870613 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2b2f5fa49698dfe0c220fb8ec08ec542fba18dc0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1a614b17247665923db921a17be572fc263707c7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2f4724e1800e7415a12eccc67db5de16522cf6fa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/array_contains.o: ../mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/be5a6efb859568cea69664eb9640b34eedb8907b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/array_contains.o.d" -o ${OBJECTDIR}/_ext/165749039/array_contains.o ../mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/calc_area.o: ../mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2a1a965360b149e05dfdfb45d9e1a558590fcc4a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/calc_area.o.d" -o ${OBJECTDIR}/_ext/165749039/calc_area.o ../mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/column_to_row_complex.o: ../mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8a9ca39544ddae8a8fe3f3e39f56587d2e679f7f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ../mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/crossing_rate.o: ../mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2e2a1ffac0bf2147486dfe94c2def9c6076b2f89 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ../mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o: ../mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8f52fcc26836ef6636d893cb2c62a4a57f7edb2b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ../mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o: ../mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/15000cb9639388b48ec31335a27e08202af8b026 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ../mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o: ../mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/61d49b3c9081e3db4da083c8c88b7c427dd488d8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ../mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr.o: ../mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fb67a012454c7aaaf69ce4e1e076f05852e1f453 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr.o ../mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr_utils.o: ../mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/abf4f1607852cbe737a63a98d71b0d0472595bab .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ../mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o: ../mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f572b31e6c815582345e5e62dcabd73c0f1cb9f9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ../mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o: ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d5b93982eaf52bdb975820600c4acdd1af73ab6a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o: ../mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f04228543473016118698b3f749854c2a0c2adba .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ../mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o: ../mplabml/src/fg_frequency_spectral_entropy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c1792295e1f390843f46b1be1785b86d6e73f950 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o ../mplabml/src/fg_frequency_spectral_entropy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o: ../mplabml/src/fg_peak_frequencies.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b00acb5d432fcd93f26bad49cf2fa6158e479367 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o ../mplabml/src/fg_peak_frequencies.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fixlog.o: ../mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f80d02fa72cc9119dd741f29245eab6e3029159d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fixlog.o.d" -o ${OBJECTDIR}/_ext/165749039/fixlog.o ../mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/imfcc.o: ../mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/671d294f6315cc6977d3b7baa4c7aa85f8de53b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/imfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/imfcc.o ../mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb.o: ../mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5d6d4b2c9ddb445c7ef32dbbbc968f328f6323c0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb.o.d" -o ${OBJECTDIR}/_ext/165749039/kb.o ../mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_output.o: ../mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/835009d850d98cc95a1fb65c5da8b95b16b09be0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_output.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_output.o ../mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_pipeline.o: ../mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d5c5061d0ebac20c4e5a76956b0f1880007f9525 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ../mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_post_processing.o: ../mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/55ddb6499036aacd47cfeb4bbc5defd7e0f2178f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ../mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o: ../mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7dbf9967f47474ac6372c0e574278bdf6336f75a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ../mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ma_symmetric.o: ../mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4b901387b0dcfc60dd401475f4ffd06a430f83b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ../mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/mean.o: ../mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ffde01b17bbb30ecf20a05b141a3509cba138272 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/mean.o.d" -o ${OBJECTDIR}/_ext/165749039/mean.o ../mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o: ../mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f50bee359aa5cad0b2efbe140d6a552e98c49f59 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ../mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/rb.o: ../mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2f09434d4cbf0717c49b6b22b360fb5fc7a2436 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/rb.o.d" -o ${OBJECTDIR}/_ext/165749039/rb.o ../mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/save_sensor_data.o: ../mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6d15a0ad41d3025ef18142d65edf6a65029074d2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ../mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o: ../mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/41e14984d52c5980ccd1bed2d99f9a694694fe95 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ../mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o: ../mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/17a38d23b3f1d53653df869080332f6eed33a663 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ../mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sg_windowing.o: ../mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/26d753e82d82a3bc2baefcd73f280fdade99e34f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ../mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sortarray.o: ../mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2ed0944e36188a83a26a4fceeed1167afc423821 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sortarray.o.d" -o ${OBJECTDIR}/_ext/165749039/sortarray.o ../mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sorted_copy.o: ../mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4e475c4d38d4aa045717e2926728d46dbec7476b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ../mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o: ../mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e1e49afe16752d7f15fed1e80ee81a72c60b98fa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ../mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_mean.o: ../mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e1f2f56479cadff71bd2a744cc22b576fe8ccf9b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_mean.o ../mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_moment.o: ../mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/96529dc919613dc5ef035ffc62f67ea565a9aa9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_moment.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_moment.o ../mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/std.o: ../mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f53b1351af2e895991e888c10d6b1e5fb74a6e90 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/std.o.d" -o ${OBJECTDIR}/_ext/165749039/std.o ../mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_absolute_average.o: ../mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/67df315af9de35532f6579f5a70bda48c81ee16 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ../mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_average.o: ../mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bdabbe4bdbe8e0ade11eb8f68690a75f7e48062f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_average.o ../mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o: ../mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/570f1b10b5f8d542f7f7b41c52de77be860a994a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ../mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_moving_average.o: ../mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/599cbabb15fc30cc5db777b2676d85e7c46bf0ab .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ../mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sum.o: ../mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/83b79363f038b62c77b3420fa83fca56c07b073e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sum.o.d" -o ${OBJECTDIR}/_ext/165749039/sum.o ../mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble.o: ../mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e6f1ffb809a970377eb35c488b458fd1fe2edcf3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble.o ../mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o: ../mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b5b323f2a304e96d67843dc0e1725f4e9ae03405 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o ../mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o: ../mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/89c8dd13138420813b80402248af698b57886fd2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ../mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array.o: ../mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/78889cda5744458e30c0148d4367c322aeb51ea2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array.o ../mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o: ../mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4fe6ac9a50b6df74613fba2213a09c78f455c922 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ../mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o: ../mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/55e3ae36260ab814a860ccc68b4a960700ccba76 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ../mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o: ../mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e9cdc0e4a965f5bdce54d386411a61f7add88ab .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ../mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o: ../mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/507f98a4fa90f88ffae2df88d92cabc9bf5f851f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ../mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o: ../mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6b8fb6d85d874c592bf5ea3dd125779686db2371 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ../mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o: ../mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5542f99053ebea05b9da3cdc99aa79593edec9fa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ../mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o: ../mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c06ecb750a1446404a20e9a6f1c8cb6572a5052 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ../mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o: ../mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/55d337f03350a616914611e1c575eec5a25e8288 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ../mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_max.o: ../mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2c9a3382257a28df2776d44d91a92194fa4414cf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ../mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o: ../mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a6c0113d77a542e4d32f4b533f09be58167b3e27 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ../mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_median.o: ../mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/18f0e91d84700a028b9b0c90f29af01f63cbe3d7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ../mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min.o: ../mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/73a327ec0f4a1f635a65b8fcaa3f697b71570094 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ../mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o: ../mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d493d9abb498b366a9ebff41ba881d343bd91693 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ../mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o: ../mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/53f67f1e01e2d8b6e50698bb079b8b4d8e37202c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ../mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_std.o: ../mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/45bb9e1ccd886d4b2e82d8e445c5e40f6407e9d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ../mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o: ../mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e3b3d046092557d1e55bf7ea28b5ffe0796430cf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ../mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o: ../mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6d3c7d987c198a9187df312838b49b5cf3dcfe8b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ../mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o: ../mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7260edd95b0cb93fa0130892fe82baf8c3a4f736 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ../mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o: ../mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/697a089cf0d85ea857c8024e10950b2203660d60 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ../mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o: ../mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/45d7c354bb8cdb7d3656da9ee4c49c3b648e2fc8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ../mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o: ../mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/699e75b10fb13f5f201a7515ed8e3680ead3974b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ../mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o: ../mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f9244a2fd9982ddc12d1ddb7561d66b960076a49 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ../mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o: ../mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5383346f1483c987a0f76ad8fa4de9b3d8148226 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ../mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_area.o: ../mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/25d13ba98427f1797c97a637a35650c03807638d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ../mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o: ../mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/958e9c6532530276b0e95d36200ab42fa540f4cc .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ../mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o: ../mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/aba38531e77eae17e652763368972bdabaeab987 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ../mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fe7e416c9cd205f699a33bcf025b617c9391c607 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a0915d43587989312a609433d9b055a212cbada3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../mplabml/lib/libmplabml.a  ../src/config/SAMD21_IOT_WG_BMI160/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\mplabml\lib\libmplabml.a      -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../mplabml/lib/libmplabml.a ../src/config/SAMD21_IOT_WG_BMI160/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21-iot-mplabml-wand.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\mplabml\lib\libmplabml.a      -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
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
