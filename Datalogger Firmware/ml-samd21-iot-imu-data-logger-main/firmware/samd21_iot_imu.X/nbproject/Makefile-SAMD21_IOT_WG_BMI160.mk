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
FINAL_IMAGE=${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/app_config/bmi160/bmi160_sensor.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../sensiml/ssi_comms.c ../src/main.c ../src/ringbuffer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d ${OBJECTDIR}/_ext/1301132388/bmi160.o.d ${OBJECTDIR}/_ext/913417575/plib_clock.o.d ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/445497352/plib_port.o.d ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/982468349/plib_systick.o.d ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d ${OBJECTDIR}/_ext/1503348509/initialization.o.d ${OBJECTDIR}/_ext/1503348509/interrupts.o.d ${OBJECTDIR}/_ext/1503348509/exceptions.o.d ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d ${OBJECTDIR}/_ext/299863938/ssi_comms.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o

# Source Files
SOURCEFILES=../src/app_config/bmi160/bmi160_sensor.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../sensiml/ssi_comms.c ../src/main.c ../src/ringbuffer.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-SAMD21_IOT_WG_BMI160.mk ${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8b3644d1ceae5621b523f70d29a369acc2f2adab .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d2ede80549121e6717c9d916ae061d8214738f25 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/229695a8e2e83fcc4a73c8858b29219266191c65 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3d851b1c2648429c86b16d269f783427eab3e6e7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/796992f6dec4893c7db01c4057cb04cd527f236c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d51b251f279470d38f8f0bfc51b37200d4838568 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c885b704ef3f5de3d9d1c708fb402d93b368fb2f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/412a89dba12b422bc92347c3d6879dd432f605c0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2bb4be8026f5c82b88795b2e9973125dfc48f05f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/435370d0e290a1d91714c5c3306f03560013e822 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/69401058c8e574af9840434d48ca7a8ec0b09375 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/58ab431f312cff809592d24a63483f9e6e5337d1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/293094e702410d8b9c21edd198bfb8f802df2375 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4f142b53f79784fac0344aad7548806b5009f9c9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b0e923d305d0b5d7a0231dbcf6d01e3a137d085c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9f530018bd76c22ab818748acad7c1954603d086 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/aaa17a6d9d2bb7923391e2a11e87456550311590 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a347e434137812c89e49f448a6f59f34578220a7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/299863938/ssi_comms.o: ../sensiml/ssi_comms.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8d626faabbaa5583ee4bad17ceb590f79e6d7163 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/299863938" 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/299863938/ssi_comms.o.d" -o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ../sensiml/ssi_comms.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/70311011f2b319b8511dd63e0b99291a90dcb89f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cea812a71c85f6f98340521a28b9af3578a49d8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bb27174ec8b10e98846c0f825028c293114ed7a3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bedf1e8a17d6b7fe4e1673ebf572a7f2f53c9d3d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/74156f00b7be1369403685f3833ca7044c7d3ccd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2043500affe106deb673956d3e759e1c8a6a78b6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a3ecdc555dc3d10ad14004edbfd9b385cd24345f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ece42b7aef947c3afdeb0882acc22c0a136c628 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4d862c4e189e800a70cfd22549150425456df8cc .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/19f3ff0b8a71e0a0997115fb735ea835ef201eb9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fee6008421a91aea8e784f091c1473f135a5800b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1b9a15d6183b418346fb14483fb0b427bee5791a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9b79a15ce4db712f55da3f7efeb2a20412b25614 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8e8eeba85d266d52ff0bd06bb981417e5e62afd1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e5e1bbe092138774462a24884a0ff7ec1227e9b6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/306c0a24ed8f17e8171c751b2469a9cb7f1b23df .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3fb79a7820fd1d897431926050d5ba6765669d3c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b5454b9d3fb0f13b85f2031ab15435ed5902301b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/83e8f8ba3c118ba8b1c8b94063e481ad03724f39 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ddc53e6609ec91c24b02133ddcfb45097e376590 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/299863938/ssi_comms.o: ../sensiml/ssi_comms.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/310cf89c3167f6621b5215e10ebc79a91764133b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/299863938" 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/299863938/ssi_comms.o.d" -o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ../sensiml/ssi_comms.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/27a943ffe7f562349bc8157b87c02c268517feef .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d3790d1b9e070dabd1039f674bdb16e4075c8cd0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/SAMD21_IOT_WG_BMI160/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/SAMD21_IOT_WG_BMI160/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/samd21_iot_imu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
