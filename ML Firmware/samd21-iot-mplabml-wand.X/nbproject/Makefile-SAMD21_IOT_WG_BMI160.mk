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
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c16d3b319c9f651de05c7ad25621951b88088fed .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/933676929/sml_recognition_run.o: ../application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b04ffe2942998e2476b9406462765f735716f899 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933676929" 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ../application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7ce68214347d7fd994a4a3d67ff78fe7c9572cf4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b0e6881e28d36bd5f0bc2b3ed57a2aa5f3eafcb6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b414c8ae81258d391ea1bd5c703832abe699fd4f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4cff985ea7992c0d8798c2bca10bb8e972bb5090 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/35024371ef3ec1206fae1c31a4026d0a1004ac8b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9fa2c14202d3c89fe2f07e25fadcfe95bca62d5c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8e8fbd7f262a01fd966ccb7a4bd0e071ae77aa8e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1e916ee0ac9a87da27ca65787d8429b5a3458e98 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ecd1acb7b0e0746a9018bb9293bc3356388a5a77 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5f5cb75d4816d54ad27c77844d2b07bec828d943 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bfce36447383a606b4fc00f9e3f76c93e77cbdd3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/91be12d6d28f6fd156a28f0f7536daddbb76eb61 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5ffaf50c11c27092623813c6c101c7a2edcb2634 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8643cdbe3b352ab382a9c8c97cebdafd2abd4f39 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/76e536289fc92186f3f296fc7cba7967dca9a20a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/67ca30c0b4df09c73268130762c9ce68c2c0629f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/93e933c73bb3a8ed7cb6bceea2f7e692e90f8257 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/array_contains.o: ../mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f8d0b42cba8bf2e647c23522f7ebdf35f976cf79 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/array_contains.o.d" -o ${OBJECTDIR}/_ext/165749039/array_contains.o ../mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/calc_area.o: ../mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/18b185af7be91fc065edfe887e4a505cc4d737d7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/calc_area.o.d" -o ${OBJECTDIR}/_ext/165749039/calc_area.o ../mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/column_to_row_complex.o: ../mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ffe25bc20e162371071046b3d8c8b5075207f7a8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ../mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/crossing_rate.o: ../mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/335ae432b1edbe1c8ad1c850fdcf937c99ad6ca6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ../mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o: ../mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1250b09ef5af9584d2ee3a4c49d3337dff07be50 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ../mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o: ../mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c5e46cda3626b7bee836b090075d3d4df138ae61 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ../mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o: ../mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3ea40cec60e56bca8e9e97a8f8d6a3826dbeb4ae .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ../mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr.o: ../mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6af9cba0a36465dec59742f7bf083bc8549d1f38 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr.o ../mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr_utils.o: ../mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/54aa18f440f3ef0763bb05283415236462cfeb12 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ../mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o: ../mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/74201884e39d1259ce5fcd73f80079db3a8c05eb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ../mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o: ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7bce8102f0e00706e2995fc91cc18df4475c547e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o: ../mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e74feef4a3c76cab4b39a3a1208a0fb69774e9ee .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ../mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o: ../mplabml/src/fg_frequency_spectral_entropy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/51bea250a1c977a70445ffe9d0813f65cd08b8a4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o ../mplabml/src/fg_frequency_spectral_entropy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o: ../mplabml/src/fg_peak_frequencies.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/51ad9886457d3d730d55118c740c51f75a231b7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o ../mplabml/src/fg_peak_frequencies.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fixlog.o: ../mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1f8dc19ade1e5fda9deb5c80f0dc6c2004ed6082 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fixlog.o.d" -o ${OBJECTDIR}/_ext/165749039/fixlog.o ../mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/imfcc.o: ../mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6045dbf84c2f74e80c25b7a703ec2bcb5f1f9e0e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/imfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/imfcc.o ../mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb.o: ../mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c75c4b01719f723e3372581ea952cbf653741942 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb.o.d" -o ${OBJECTDIR}/_ext/165749039/kb.o ../mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_output.o: ../mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/34ab27a1ab37f9ca755d95f709433f6760171c90 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_output.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_output.o ../mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_pipeline.o: ../mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a676c406f94cf9961ec20b95c5cb294b37b88999 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ../mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_post_processing.o: ../mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/47773de5e8e3695f50dd733c7e8ba50f78532af9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ../mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o: ../mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/75b773b0e1b2d11a369dfa25b9465decd88e104f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ../mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ma_symmetric.o: ../mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a8f63febb9fb49c244d0e95dfda3f3fc5a76b6ac .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ../mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/mean.o: ../mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/733b9595dbe9599798a1e1789b5156c2f0118f1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/mean.o.d" -o ${OBJECTDIR}/_ext/165749039/mean.o ../mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o: ../mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/52c00a0ead2de536c12b130d15e54dd8efe80ee5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ../mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/rb.o: ../mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a3bc83e566135bb2894390aa1253ff7f355f2d3f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/rb.o.d" -o ${OBJECTDIR}/_ext/165749039/rb.o ../mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/save_sensor_data.o: ../mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ccbe76db9861d932842ede2aa78fb231e30bd3db .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ../mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o: ../mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fddfb4671d4b9592c9c067a6b9efdf63c2dbac26 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ../mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o: ../mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/56a4ba03669f33519e038e55395c89ea94457077 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ../mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sg_windowing.o: ../mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ec681e1c47641a6618f6daeb7efedda8b0304152 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ../mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sortarray.o: ../mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/36b02e7d4a73d6c35adeff36e16a6f7021b71d4e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sortarray.o.d" -o ${OBJECTDIR}/_ext/165749039/sortarray.o ../mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sorted_copy.o: ../mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dc2c11cf43b1eef4e94829f6c698fc0e8262ac9a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ../mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o: ../mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cc8f07fd558bb0fe9a9cbfe61777ae4f38b61b48 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ../mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_mean.o: ../mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/619c45b513321aa21523a02cb58dc5f6532e2033 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_mean.o ../mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_moment.o: ../mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ca87e4a2a376a207539d82608898be43a5efc080 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_moment.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_moment.o ../mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/std.o: ../mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/657a3db92375738dd4c06cd491a9c1feaae42e1b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/std.o.d" -o ${OBJECTDIR}/_ext/165749039/std.o ../mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_absolute_average.o: ../mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fc30c7b8bed3c851df2e0d7ff0bcb34fc1a7244d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ../mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_average.o: ../mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2078368fecadaab6dc99856de840f09316426073 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_average.o ../mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o: ../mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5e03085eea47710fa45e06f64a89026fe6271c47 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ../mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_moving_average.o: ../mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b331aa8ebb42d21ab79c77bf4eae86fec508f069 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ../mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sum.o: ../mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/55f68ed72a36df09a486ceae1f2b0ddb05bbbb1c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sum.o.d" -o ${OBJECTDIR}/_ext/165749039/sum.o ../mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble.o: ../mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4da709d6dfe807c5cd94a7deb27b64ead17d6785 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble.o ../mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o: ../mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/25b8af98a7547ff464db0f267465a3e19e6d19d9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o ../mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o: ../mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1fd6f1483af8c8e79169ce2b026e686f4134e0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ../mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array.o: ../mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3c79759cee7dc372744058d4db964f0bd41e5e60 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array.o ../mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o: ../mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9bdb9539d7a913e021470fc8c2c71ad5af13ff7c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ../mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o: ../mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c9e73c65a5f393c82a25a537a768e2f1d57e429b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ../mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o: ../mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7f154490bee656d73b5198643b76fea1db18027 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ../mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o: ../mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/11178bef65279abbb0aa8c3e20da59b4c49f481d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ../mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o: ../mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8d13b4205088824774f88c8ee746b07361fbac65 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ../mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o: ../mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/263c205ce0f02fd4d89d45ecd0924b20a93f2df4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ../mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o: ../mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fa4de8aca42b147dae6fa014423e3b762d8e0b19 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ../mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o: ../mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fd62ece8e26d688835fc37de2ac5602a86379f94 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ../mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_max.o: ../mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/44e5e9e53b3240ebd3440a4b7ddc87eef59f09f2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ../mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o: ../mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e4f33d4d8cc78846bbf6a91bde9f944d1fe13253 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ../mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_median.o: ../mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c20cf840aa770837b2d63323d66575cc05880d5c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ../mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min.o: ../mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a65527e91ff59e8d518009caa74d7200b65a408d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ../mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o: ../mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ca5877fd4007b3f1335a1a8e0dcfbc2d3421bb0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ../mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o: ../mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/80dae69ed6c0c1d030bf1947ab804a9a76cf662d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ../mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_std.o: ../mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5c25f6e369e195e296b7fe802f41761bce145064 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ../mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o: ../mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/18c4abf41f1b87c42e672209cbc47dab54c9b66d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ../mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o: ../mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8082ab0666624dfe3227050410724caff861faa0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ../mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o: ../mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f3211c643c4c340bc4197dc97a56d83e4ae4b9db .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ../mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o: ../mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/39f87d787fc332215407ad8aa87d00b62c7884c8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ../mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o: ../mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/53e195213abb4231e4ab61d0c7eb9887fb0dd224 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ../mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o: ../mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d5e14fce3c404d3ba9d6904e1055cca1d142bf4c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ../mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o: ../mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/42b27e92ac9238a5e25fd950319d13de68568f5c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ../mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o: ../mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/32258f5a7ad51b147ddb63f285bd0623e34b493d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ../mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_area.o: ../mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6829e881bceadc35dc1b9ff49a2abc780b75c01d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ../mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o: ../mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cec273f62f00337ff80499c4a501cd98c3f150c8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ../mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o: ../mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/567fec13a77691c8999bd650075993a447091d84 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ../mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7b40fe64606097cfc50e64696a055aafd4a9dd60 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3eb5bcc9b6baeda6de7924460e37927fa0d4a6b6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/210e5c7d759f0eeade7f6793969261badb1dc2ab .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/933676929/sml_recognition_run.o: ../application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e53348b2a16bf41b1eb63edca038414cfc64967e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933676929" 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ../application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ba41aca54a6932fe4ac59dd19ce447ddc723a8a1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/80aabe67d6f47eab850d89f338908e7e1c734be0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/93e0b1060703482ee39e5e7c329e36d76953c27e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e377b4798090f01209d7eabb1bdff917ff7a1907 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/70b3f0d958aadab24a3fc34924b829614c524c06 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/50184a13e145cc1f928cd882f955e846fe5439ef .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/674a455236c80b954cabc7d9201080f0886a9c9f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cdfdb23ea2229dac5e463eea6126c66fee1bb585 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/61de80c295813ebd3d315cd8737c7ee74af5c04b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6fd42439a895bc4ced6a86bb6b5926af153c74c9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ef660b5b5b9d8c68b8ba47f0d8b4f249f5ac45f8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ffc72ebc8481b1e9c81329c169b92d141edeae8f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f7fba9723aebfd6afe94fb7185760d003c195678 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/449ac401cd50922dfe735e168bd3c0e300fc62b2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/abdb740a986fe819367c7f5b8c0760817bb44222 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/616fc7c76a2244285f14cffe1885676d0042398e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7d908f256ed433792da9fecfec28d09799e900aa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/array_contains.o: ../mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/64883abda5ce1e219837a1bf1c0f1175c0d1f766 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/array_contains.o.d" -o ${OBJECTDIR}/_ext/165749039/array_contains.o ../mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/calc_area.o: ../mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d6e171d116e1e7a0c89957a2e87cd6b08ea26931 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/calc_area.o.d" -o ${OBJECTDIR}/_ext/165749039/calc_area.o ../mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/column_to_row_complex.o: ../mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/105b62714d6a1e018912c7207b802b178a840777 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ../mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/crossing_rate.o: ../mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/28b8c5c278800310bbf98c6432d4df92d4c40100 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ../mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o: ../mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/82fe8079a0f866ea2b6e8ed11479830807dd5304 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ../mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o: ../mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ef45db094401573e3d4fb633fadf0d0be83d6378 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ../mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o: ../mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6a2d24d8f3fb062a86ffb783858f96746019ef9c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ../mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr.o: ../mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fe9a6b2a358939f71413b6e93b45743869f6dee3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr.o ../mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr_utils.o: ../mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b2eb332a432a83d3b1e9fd729e128c7224183218 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ../mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o: ../mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6041fb85fd69e8ff6f50d1d5efe77c39407db5db .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ../mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o: ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/79a1db4b5a3148cf17c6069857e088d0c6036f4e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_peak_harmonic_product_spectrum.o ../mplabml/src/fg_frequency_peak_harmonic_product_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o: ../mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b2f4869c3b127301e9df4ffe00e2e4daae082b0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ../mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o: ../mplabml/src/fg_frequency_spectral_entropy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ce0f4f454fcd0751bb3da7239e38fc98182f68f1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_spectral_entropy.o ../mplabml/src/fg_frequency_spectral_entropy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o: ../mplabml/src/fg_peak_frequencies.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/150d9dc1fd5eb39b2e07a26e7c262ed5549d9ef5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_peak_frequencies.o ../mplabml/src/fg_peak_frequencies.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fixlog.o: ../mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/eb786b438ba32694a488f2a1b331ae482ba3969 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fixlog.o.d" -o ${OBJECTDIR}/_ext/165749039/fixlog.o ../mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/imfcc.o: ../mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/525c52d1f06023e28f8a591ce9f56922aa53f423 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/imfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/imfcc.o ../mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb.o: ../mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f55a4514ed48f92cada63336415538aca25c71e7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb.o.d" -o ${OBJECTDIR}/_ext/165749039/kb.o ../mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_output.o: ../mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8f6b5b61953fd137b8143044acd8251ee92524b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_output.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_output.o ../mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_pipeline.o: ../mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2e9886da8e5f458eddd5bbc2fe09eb08e2fa83cc .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ../mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_post_processing.o: ../mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ea8e40c28caf79b3ae9493258025b76e51460e0d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ../mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o: ../mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/752849b9a76965435f284ec039db913de3cd1b6c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ../mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ma_symmetric.o: ../mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5537b24276255735edffa8c8aeec167a8f552195 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ../mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/mean.o: ../mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5aa3d3e07e7b349ee8ca392abd6115c5c5f6a0cd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/mean.o.d" -o ${OBJECTDIR}/_ext/165749039/mean.o ../mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o: ../mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/30f7cdb7fbd0f714ca164c931311f4fa0b185e1b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ../mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/rb.o: ../mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a916031321f29c12d37928c9489b2f30cb15239d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/rb.o.d" -o ${OBJECTDIR}/_ext/165749039/rb.o ../mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/save_sensor_data.o: ../mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/77ba301c79661a9ed2da27d74822fa0be0cb0cbc .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ../mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o: ../mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/78f343c12f6e86ea2274e8ac181c1726e08b250d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ../mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o: ../mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d31ba83eb3ada66305b47751a9548e6f3dc53143 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ../mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sg_windowing.o: ../mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/66d675451b9aeae11e141f0ae74805dc2b64780 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ../mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sortarray.o: ../mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bedcee48fbcf72b3913760436942df5cdba2a106 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sortarray.o.d" -o ${OBJECTDIR}/_ext/165749039/sortarray.o ../mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sorted_copy.o: ../mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/292c5795db5d577a278ca007fac80cefd76f3e9b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ../mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o: ../mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/65acdec55f358e0dc82cf5b8e389b0afa5a06492 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ../mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_mean.o: ../mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6946174b076e82dfb57968f118b3324d78c8a105 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_mean.o ../mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_moment.o: ../mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9d9b78dea67f0d238b903f3c7508f81b47ebd53e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_moment.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_moment.o ../mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/std.o: ../mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1e20f974912fcbcd3bfe0c0e6677e6dfbcbacb32 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/std.o.d" -o ${OBJECTDIR}/_ext/165749039/std.o ../mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_absolute_average.o: ../mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f9dd4fd7b9bd940e95c1e8b8d2f984e2419d3c6a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ../mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_average.o: ../mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/aaab526e85caaf7e57c2af47d046e81857867ada .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_average.o ../mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o: ../mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/aa8ec7e43e5320deeab74162590c7ad653642cd0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ../mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_moving_average.o: ../mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1a3e9d568fb0ac7856b95138a17f9fe3cc366a28 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ../mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sum.o: ../mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a527f74334a680025b876cb0d6f979890e0336aa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sum.o.d" -o ${OBJECTDIR}/_ext/165749039/sum.o ../mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble.o: ../mplabml/src/tree_ensemble.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9ef681331741e1403011cf4647c78799fcde135f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble.o ../mplabml/src/tree_ensemble.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o: ../mplabml/src/tree_ensemble_trained_models.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d2119c9dea4e4b733d2db080afc21f184f838368 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o.d" -o ${OBJECTDIR}/_ext/165749039/tree_ensemble_trained_models.o ../mplabml/src/tree_ensemble_trained_models.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o: ../mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9c6c620556397327e1ddcc0b353caf1b2aa4d02b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ../mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array.o: ../mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e10593b9c195cdf19b531123a2a8de01495aaf7d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array.o ../mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o: ../mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/132508534dc5c6602c4580ec6a76544f028cf897 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ../mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o: ../mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6de50e0dc74d7b1469f4a0c5b48a1c4b22d0b02e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ../mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o: ../mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4208eb5cd61d4841513b838504982564d2daa597 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ../mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o: ../mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6483fca19ff71a9e955e1a4ecdc97c344cbc4e38 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ../mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o: ../mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/31a836d17c56e8529c0424b03af0430e4a8f941e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ../mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o: ../mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/347bd20704a012016f92d6c7819c6be281fb1656 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ../mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o: ../mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/af0a229bf3ec68807986f0daf3aa427224c45737 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ../mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o: ../mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1df75076c2e2b7f41042ee75b9df9b2260904dba .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ../mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_max.o: ../mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/57e39dd70f2a69bb7e39597a43cac28e436cc946 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ../mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o: ../mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2449dac29451b06b8ef92519b7b963233d392634 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ../mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_median.o: ../mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/77b7359bf6f2aa57d70a481622835bd1b7177de7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ../mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min.o: ../mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b5da23c8f2ed6e581b4257bd53c9e43776678253 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ../mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o: ../mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a04ac199e35bf5a153b4d12ed95448be00c0da50 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ../mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o: ../mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1dbd25dabf35b06e190284874be2dcc4d3a036cc .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ../mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_std.o: ../mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cf0795e2ba26369f26861f8d9d6ba07dec799cef .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ../mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o: ../mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/46be43661f19a752e6113f1244342b04859bc1c7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ../mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o: ../mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7d1590d6f329ec8ef3570c72fd79f0f07c728781 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ../mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o: ../mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a33e1389318bc2e3d89bbd9984cec3bc5c8bb2a2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ../mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o: ../mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b3e6755f491e20bcff08238d130c5b8c123655e9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ../mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o: ../mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f9c42ac63a8ff179027f396a3fd23c7ac4d21651 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ../mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o: ../mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/75cc295dd687c7736a6666d743d64a85fccde04b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ../mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o: ../mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3a8a55416b239b957793cda6d1aacc79be72f48 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ../mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o: ../mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/53adaf6ef0728405717ad6ea92add84492ea5fcf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ../mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_area.o: ../mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7cefb6026b4a6fa447d21638b05756f29753762b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ../mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o: ../mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/73891511509b3f584e35d8465f024e29468b0380 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ../mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o: ../mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/afc46891290b1361a7b0f5b1a29f53d566ba5524 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ../mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1744b35fb4636064fe133cf3aa00f8bb774cbd5e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/73ac832d7b69d28046f26e4c68fc5e1a4e582226 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
