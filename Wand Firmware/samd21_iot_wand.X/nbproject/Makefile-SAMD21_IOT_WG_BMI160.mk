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
SOURCEFILES_QUOTED_IF_SPACED=../src/app_config/bmi160/bmi160_sensor.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/spi/src/drv_spi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_gpio.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_eint.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/spi/wdrv_winc_spi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/common/nm_common.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ssl.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_hif.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_wifi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmspi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmdrv.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_periph.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ota.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmasic.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmbus.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/socket.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_addr.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_ntop.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/flexible_flash.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/spi_flash.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/osal/wdrv_winc_osal.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_softap.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssfind.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_sta.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_wps.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_assoc.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_socket.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_systime.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_enterprise.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_nvm.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_httpprovctx.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_powersave.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_authctx.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_ssl.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_custie.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_host_file.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssctx.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/dmac/plib_dmac.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom2_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc4.c ../src/config/SAMD21_IOT_WG_ICM42688/system/dma/sys_dma.c ../src/config/SAMD21_IOT_WG_ICM42688/system/int/src/sys_int.c ../src/config/SAMD21_IOT_WG_ICM42688/system/time/src/sys_time.c ../src/config/SAMD21_IOT_WG_ICM42688/tasks.c ../sensiml/ssi_comms.c ../src/main.c ../src/ringbuffer.c ../src/app.c ../src/winc1500_tcp_client.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/1660664302/drv_spi.o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o ${OBJECTDIR}/_ext/90265895/nm_common.o ${OBJECTDIR}/_ext/121554788/m2m_ssl.o ${OBJECTDIR}/_ext/121554788/m2m_hif.o ${OBJECTDIR}/_ext/121554788/m2m_wifi.o ${OBJECTDIR}/_ext/121554788/nmspi.o ${OBJECTDIR}/_ext/121554788/nmdrv.o ${OBJECTDIR}/_ext/121554788/m2m_periph.o ${OBJECTDIR}/_ext/121554788/m2m_ota.o ${OBJECTDIR}/_ext/121554788/nmasic.o ${OBJECTDIR}/_ext/121554788/nmbus.o ${OBJECTDIR}/_ext/548032175/socket.o ${OBJECTDIR}/_ext/548032175/inet_addr.o ${OBJECTDIR}/_ext/548032175/inet_ntop.o ${OBJECTDIR}/_ext/609036575/flexible_flash.o ${OBJECTDIR}/_ext/609036575/spi_flash.o ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o ${OBJECTDIR}/_ext/907429946/wdrv_winc.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1580516298/plib_dmac.o ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o ${OBJECTDIR}/_ext/399410062/plib_tc4.o ${OBJECTDIR}/_ext/1584719636/sys_dma.o ${OBJECTDIR}/_ext/1318297016/sys_int.o ${OBJECTDIR}/_ext/386530258/sys_time.o ${OBJECTDIR}/_ext/1832905403/tasks.o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d ${OBJECTDIR}/_ext/1301132388/bmi160.o.d ${OBJECTDIR}/_ext/913417575/plib_clock.o.d ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/445497352/plib_port.o.d ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/982468349/plib_systick.o.d ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d ${OBJECTDIR}/_ext/1503348509/initialization.o.d ${OBJECTDIR}/_ext/1503348509/interrupts.o.d ${OBJECTDIR}/_ext/1503348509/exceptions.o.d ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d ${OBJECTDIR}/_ext/1660664302/drv_spi.o.d ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o.d ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o.d ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o.d ${OBJECTDIR}/_ext/90265895/nm_common.o.d ${OBJECTDIR}/_ext/121554788/m2m_ssl.o.d ${OBJECTDIR}/_ext/121554788/m2m_hif.o.d ${OBJECTDIR}/_ext/121554788/m2m_wifi.o.d ${OBJECTDIR}/_ext/121554788/nmspi.o.d ${OBJECTDIR}/_ext/121554788/nmdrv.o.d ${OBJECTDIR}/_ext/121554788/m2m_periph.o.d ${OBJECTDIR}/_ext/121554788/m2m_ota.o.d ${OBJECTDIR}/_ext/121554788/nmasic.o.d ${OBJECTDIR}/_ext/121554788/nmbus.o.d ${OBJECTDIR}/_ext/548032175/socket.o.d ${OBJECTDIR}/_ext/548032175/inet_addr.o.d ${OBJECTDIR}/_ext/548032175/inet_ntop.o.d ${OBJECTDIR}/_ext/609036575/flexible_flash.o.d ${OBJECTDIR}/_ext/609036575/spi_flash.o.d ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc.o.d ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o.d ${OBJECTDIR}/_ext/1580516298/plib_dmac.o.d ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o.d ${OBJECTDIR}/_ext/399410062/plib_tc4.o.d ${OBJECTDIR}/_ext/1584719636/sys_dma.o.d ${OBJECTDIR}/_ext/1318297016/sys_int.o.d ${OBJECTDIR}/_ext/386530258/sys_time.o.d ${OBJECTDIR}/_ext/1832905403/tasks.o.d ${OBJECTDIR}/_ext/299863938/ssi_comms.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/1660664302/drv_spi.o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o ${OBJECTDIR}/_ext/90265895/nm_common.o ${OBJECTDIR}/_ext/121554788/m2m_ssl.o ${OBJECTDIR}/_ext/121554788/m2m_hif.o ${OBJECTDIR}/_ext/121554788/m2m_wifi.o ${OBJECTDIR}/_ext/121554788/nmspi.o ${OBJECTDIR}/_ext/121554788/nmdrv.o ${OBJECTDIR}/_ext/121554788/m2m_periph.o ${OBJECTDIR}/_ext/121554788/m2m_ota.o ${OBJECTDIR}/_ext/121554788/nmasic.o ${OBJECTDIR}/_ext/121554788/nmbus.o ${OBJECTDIR}/_ext/548032175/socket.o ${OBJECTDIR}/_ext/548032175/inet_addr.o ${OBJECTDIR}/_ext/548032175/inet_ntop.o ${OBJECTDIR}/_ext/609036575/flexible_flash.o ${OBJECTDIR}/_ext/609036575/spi_flash.o ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o ${OBJECTDIR}/_ext/907429946/wdrv_winc.o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1580516298/plib_dmac.o ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o ${OBJECTDIR}/_ext/399410062/plib_tc4.o ${OBJECTDIR}/_ext/1584719636/sys_dma.o ${OBJECTDIR}/_ext/1318297016/sys_int.o ${OBJECTDIR}/_ext/386530258/sys_time.o ${OBJECTDIR}/_ext/1832905403/tasks.o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o

# Source Files
SOURCEFILES=../src/app_config/bmi160/bmi160_sensor.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/spi/src/drv_spi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_gpio.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_eint.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/spi/wdrv_winc_spi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/common/nm_common.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ssl.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_hif.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_wifi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmspi.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmdrv.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_periph.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ota.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmasic.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmbus.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/socket.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_addr.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_ntop.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/flexible_flash.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/spi_flash.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/osal/wdrv_winc_osal.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_softap.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssfind.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_sta.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_wps.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_assoc.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_socket.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_systime.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_enterprise.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_nvm.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_httpprovctx.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_powersave.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_authctx.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_ssl.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_custie.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_host_file.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc.c ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssctx.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/dmac/plib_dmac.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom2_spi_master.c ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc4.c ../src/config/SAMD21_IOT_WG_ICM42688/system/dma/sys_dma.c ../src/config/SAMD21_IOT_WG_ICM42688/system/int/src/sys_int.c ../src/config/SAMD21_IOT_WG_ICM42688/system/time/src/sys_time.c ../src/config/SAMD21_IOT_WG_ICM42688/tasks.c ../sensiml/ssi_comms.c ../src/main.c ../src/ringbuffer.c ../src/app.c ../src/winc1500_tcp_client.c

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
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7a5a7c73a68acc8ea781774fb90462d290ff910c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3aae7887d3f1458e609370ff43b1e27507069c06 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9d26fd41149f5affc09ff08121a0c7c6028e79e0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/287a6fcef9a64af603267f5bc4583306a66bf0bb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ef3eaaf44433da107943823ce87e3efbf5599850 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/219705a58094f9812652ea81902bf359288515fb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4f916f6f16e4b30f5b88ca4d0a490203f97c2f88 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/670fc9afefea1e2ca29d352ccfa0f53716cb2098 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fce502764bc2bf1fa8e8039dffd13f8da40dbbfa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1222b43cfcae6b5a6ec6d54f7f8739f9d9a57c8b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3dccc653fcc9482e4f93a2337963676252eaad7d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/943f180fee73d44a7df82142272a149d0098170a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9a85ea853f42b97d02124fff89ab5788dbf86c88 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b732d1cc1f6300f996137ba7c63c738a01ed6080 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/85ad56a290fd3411a3b8dda040f18e563f116d8e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2dc414201625535f12962e304198f75f27764f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/682d3757e84f76d48d2c06d8739c9863b0fe8959 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6cedcfbbd6298a3ed38ce287baccd481b45e8f22 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1660664302/drv_spi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/spi/src/drv_spi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/eb04904a9a69b10f4211b051c0d8a8b5736baf67 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1660664302" 
	@${RM} ${OBJECTDIR}/_ext/1660664302/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1660664302/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1660664302/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1660664302/drv_spi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/spi/src/drv_spi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_gpio.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/66a5cbe21c0d86cd761facecf57f5dbfdb37abf3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1164161090" 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o.d" -o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_gpio.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_eint.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a6c06be125fe45086d4febbff884a2f00c18ae3e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1164161090" 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_eint.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/spi/wdrv_winc_spi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/665423a411a913cb57aecb8794da250f9e0df433 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101005277" 
	@${RM} ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/spi/wdrv_winc_spi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/90265895/nm_common.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/common/nm_common.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f37bb17653bdda3a1085797d1f946e83b79699f7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/90265895" 
	@${RM} ${OBJECTDIR}/_ext/90265895/nm_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/90265895/nm_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/90265895/nm_common.o.d" -o ${OBJECTDIR}/_ext/90265895/nm_common.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/common/nm_common.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_ssl.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ssl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a014a0a77ce93dc1f16482ca2f7b899a885fad0e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_ssl.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_ssl.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ssl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_hif.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_hif.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/eac6b24d4d8220923ea8615f2012102a793f222e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_hif.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_hif.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_hif.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_wifi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_wifi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/17ef6abe98e86ee18599c52c33fbd53c76efe6e1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_wifi.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_wifi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_wifi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmspi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmspi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dde1dc7cd6728120d346fa19c45d1bc8518faefe .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmspi.o.d" -o ${OBJECTDIR}/_ext/121554788/nmspi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmspi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmdrv.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmdrv.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d5746186703dec7ad0057051a35d2b98cf7d6bcd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmdrv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmdrv.o.d" -o ${OBJECTDIR}/_ext/121554788/nmdrv.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmdrv.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_periph.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_periph.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/566304a3f9e2291b3d2d999f2b55e108c53b8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_periph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_periph.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_periph.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_periph.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_ota.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ota.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/729f38fb39d83cb04e141b96988cff3c29bec275 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_ota.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_ota.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ota.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmasic.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmasic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f0f0d6ae2f21aba9c3a68f7ff03debe7a8b6087c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmasic.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmasic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmasic.o.d" -o ${OBJECTDIR}/_ext/121554788/nmasic.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmasic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmbus.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmbus.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a407b8a536e4f0fbfa23d8cdae31cb3093a0a058 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmbus.o.d" -o ${OBJECTDIR}/_ext/121554788/nmbus.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmbus.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/548032175/socket.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/socket.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bab997f7803fe38853233218cb82684b07343122 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/548032175" 
	@${RM} ${OBJECTDIR}/_ext/548032175/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/548032175/socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/548032175/socket.o.d" -o ${OBJECTDIR}/_ext/548032175/socket.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/socket.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/548032175/inet_addr.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_addr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1c9eb49b39a9cd524409a3c5012a3584dcfcd13 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/548032175" 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_addr.o.d 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_addr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/548032175/inet_addr.o.d" -o ${OBJECTDIR}/_ext/548032175/inet_addr.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_addr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/548032175/inet_ntop.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_ntop.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cf70f2eb64c5c4477284156f40f1f488161b4b1d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/548032175" 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_ntop.o.d 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_ntop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/548032175/inet_ntop.o.d" -o ${OBJECTDIR}/_ext/548032175/inet_ntop.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_ntop.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/609036575/flexible_flash.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/flexible_flash.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/77594c6f128ea9eb2cf935146119d7adc3c0504d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/609036575" 
	@${RM} ${OBJECTDIR}/_ext/609036575/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/609036575/flexible_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/609036575/flexible_flash.o.d" -o ${OBJECTDIR}/_ext/609036575/flexible_flash.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/flexible_flash.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/609036575/spi_flash.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/spi_flash.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3c6b12dc54c26ec6ca2e73b3caef7b6e65f10a85 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/609036575" 
	@${RM} ${OBJECTDIR}/_ext/609036575/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/609036575/spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/609036575/spi_flash.o.d" -o ${OBJECTDIR}/_ext/609036575/spi_flash.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/spi_flash.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/osal/wdrv_winc_osal.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/68b90d9bf8629747112b9c231f391eda7410b680 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1784303044" 
	@${RM} ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o.d" -o ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/osal/wdrv_winc_osal.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_softap.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7b1e142b9515dba582992251564f664a9db2bff4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_softap.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssfind.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fa1bb01b5442d1788c4ccf45f06e6eabec14e9ab .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssfind.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_sta.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f9f45c7aa85578bfe117e23bd4962bcc9ca6b7a7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_sta.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_wps.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/264481ca27b2a70e1193f3466379d0edeccf2587 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_wps.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_assoc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/49716e6af2744da702c92aef23bdc20ef5b3ea59 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_assoc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_socket.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2d178873f5593e041b499e4017c15c82290a595 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_socket.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_systime.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cb7c6c6f561d1a927487b217f078a0d947c743d1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_systime.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_enterprise.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e32614fafbcbade69701d7b955ee3770d7d29d25 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_enterprise.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_nvm.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7c3b62a7ab8a5b027b2655d8de81a33595f3f3ee .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_nvm.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_httpprovctx.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/810bad1d050e93bf919799ef9de2aadaec9a8b44 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_httpprovctx.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_powersave.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e9f3917c1482d5bfef1cfac3ba99e4cf11831ea5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_powersave.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_authctx.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b0eef812812086623ddd733f5564363a27d18bb9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_authctx.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_ssl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ade96587b836ca657fb1eb4994f2b84751f3842c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_ssl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_custie.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6e5afdd171bd5c60896a6e07d786bdbe94782af6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_custie.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_host_file.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7bf191dd151e15528b3cd639d5bb7200e5f0114d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_host_file.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d75f729ab8a4843b1ae58abf7d848b9bdf6ebf5d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssctx.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2219fac1c65b458660d74621a123e84321ef86fa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssctx.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1580516298/plib_dmac.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/dmac/plib_dmac.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4c43f978bde40052e5f44c7160afad685d7b3f95 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1580516298" 
	@${RM} ${OBJECTDIR}/_ext/1580516298/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580516298/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1580516298/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1580516298/plib_dmac.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/dmac/plib_dmac.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom2_spi_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c8411c76f44822b207ac2962f93be318428dd0ee .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014017276" 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o.d" -o ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom2_spi_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399410062/plib_tc4.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc4.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1da630dae8bd776a0ab4e67d83f60d6b96e68aa5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/399410062" 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399410062/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/399410062/plib_tc4.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc4.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584719636/sys_dma.o: ../src/config/SAMD21_IOT_WG_ICM42688/system/dma/sys_dma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ee7e3a2e089ef1aa8c7aded65a1e1c60f395ccc7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584719636" 
	@${RM} ${OBJECTDIR}/_ext/1584719636/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584719636/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584719636/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1584719636/sys_dma.o ../src/config/SAMD21_IOT_WG_ICM42688/system/dma/sys_dma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1318297016/sys_int.o: ../src/config/SAMD21_IOT_WG_ICM42688/system/int/src/sys_int.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f412c173a6d58b968adb3e97b8c440411a03a05e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1318297016" 
	@${RM} ${OBJECTDIR}/_ext/1318297016/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1318297016/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1318297016/sys_int.o.d" -o ${OBJECTDIR}/_ext/1318297016/sys_int.o ../src/config/SAMD21_IOT_WG_ICM42688/system/int/src/sys_int.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/386530258/sys_time.o: ../src/config/SAMD21_IOT_WG_ICM42688/system/time/src/sys_time.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d791b9c21fc00d25952d65fe72a12bf2c555f56f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/386530258" 
	@${RM} ${OBJECTDIR}/_ext/386530258/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/386530258/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/386530258/sys_time.o.d" -o ${OBJECTDIR}/_ext/386530258/sys_time.o ../src/config/SAMD21_IOT_WG_ICM42688/system/time/src/sys_time.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/tasks.o: ../src/config/SAMD21_IOT_WG_ICM42688/tasks.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dd7befc1541a03b067f1da4ce565ec3a1cfcafb4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/tasks.o.d" -o ${OBJECTDIR}/_ext/1832905403/tasks.o ../src/config/SAMD21_IOT_WG_ICM42688/tasks.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/299863938/ssi_comms.o: ../sensiml/ssi_comms.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fb76572022e970fd8f8f951a6cfad7e45bf4b8c8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/299863938" 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/299863938/ssi_comms.o.d" -o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ../sensiml/ssi_comms.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6d3c4e9b3ce6b1ac5c819ec4f1008891433ebd54 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cc340e817b8b74d5734f6c9bd4f174cdc027ab89 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8d9ce202ee8aa24d741b4509934efdee326a5989 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o: ../src/winc1500_tcp_client.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5d9333c04548eb144e2f9bf756aa4dccd9dfd877 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o.d" -o ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o ../src/winc1500_tcp_client.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/120f02f1e7ed44fb7fb79549fb9e7b98e4716cb9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3f861588bf61e89a9bc376ef98e4e3d0ebf2d34b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/216752a78724a036d142ed14bc18be0936e5ac2b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f373c41e464a1cd5b1fc566ac83457754833bc77 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/56693431eb5941d4ba3774c4f8f5ccb484291387 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/17b4617172dce935dbb56cb1b70a1b65fcf1a366 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/30d355a7c49993e950fc046e5f35ef8e0d7c0665 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5e2eee452d9a03f6285c0b20580db5e5bddd5666 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3f3316f9aa7f13740c82efb97660910f81087b39 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/95833d77cdcd0e988e1cb16650a28f45987dabab .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/96847d0b46e1f2cdb4c17385f9c136ca97e4da9f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/871bd332e286f330c5c6287b8067f0ade884f927 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/74e4dca81e0577be95ec2a2aca963c9ca1a7adce .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2548f27ae3494d307eed94aeab3b1c799fb1a9d9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5d77c27f72e2809925c59fee925a20c5953d831f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d56718e9ba712b28ce5c6737f7b57155b5bd2a4e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c5a68f1e771e93666638c6e0fd459cf0eddeb324 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/53026cc316cfd74ae012d8ea31763f81b58740d1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1660664302/drv_spi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/spi/src/drv_spi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f950b390c86394c76a28b9e3072dfb3b58ff3a85 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1660664302" 
	@${RM} ${OBJECTDIR}/_ext/1660664302/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1660664302/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1660664302/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1660664302/drv_spi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/spi/src/drv_spi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_gpio.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d74feb44c3e9bbd84f40db28436e15107355ba69 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1164161090" 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o.d" -o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_gpio.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_gpio.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_eint.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cdc44ec2c6353adaf8acda3f955a1cca4103826c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1164161090" 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/1164161090/wdrv_winc_eint.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/gpio/wdrv_winc_eint.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/spi/wdrv_winc_spi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/54f4b3d8ec78f290a8ada132d08427fbac8ed3a8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101005277" 
	@${RM} ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/101005277/wdrv_winc_spi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/dev/spi/wdrv_winc_spi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/90265895/nm_common.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/common/nm_common.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/105e78ad20cc45b4a9ac06d1364d5efb778cc39e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/90265895" 
	@${RM} ${OBJECTDIR}/_ext/90265895/nm_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/90265895/nm_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/90265895/nm_common.o.d" -o ${OBJECTDIR}/_ext/90265895/nm_common.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/common/nm_common.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_ssl.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ssl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5fbebce9de0698a148b1c0eb74f86faed8ab78a3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_ssl.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_ssl.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ssl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_hif.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_hif.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/18b990267cda132ce587b7d16547658a7596b9ee .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_hif.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_hif.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_hif.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_wifi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_wifi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f257d36422b9a7255e94393862ad60e0fbabfd96 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_wifi.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_wifi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_wifi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmspi.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmspi.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9f1764b96579e65ca78b196b411bffd4d28c46e2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmspi.o.d" -o ${OBJECTDIR}/_ext/121554788/nmspi.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmspi.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmdrv.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmdrv.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/531148004a002d79febd296bc50fdaab293fcca2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmdrv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmdrv.o.d" -o ${OBJECTDIR}/_ext/121554788/nmdrv.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmdrv.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_periph.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_periph.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d6555a3a975601c56e147172bd4379b66a56311e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_periph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_periph.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_periph.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_periph.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/m2m_ota.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ota.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/24685d7b58d5fede5bc7beb1705bfa7231074a13 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/m2m_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/m2m_ota.o.d" -o ${OBJECTDIR}/_ext/121554788/m2m_ota.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/m2m_ota.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmasic.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmasic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6bedd9fc2de5a0b361b41c2bbfb98ab122fd8225 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmasic.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmasic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmasic.o.d" -o ${OBJECTDIR}/_ext/121554788/nmasic.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmasic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/121554788/nmbus.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmbus.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/eac3f63b0f10420d819d7c4a32dac79e91c5e35d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/121554788" 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/121554788/nmbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/121554788/nmbus.o.d" -o ${OBJECTDIR}/_ext/121554788/nmbus.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/driver/nmbus.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/548032175/socket.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/socket.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8082d436624e0357f98eb3751cd3a82a53c02036 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/548032175" 
	@${RM} ${OBJECTDIR}/_ext/548032175/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/548032175/socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/548032175/socket.o.d" -o ${OBJECTDIR}/_ext/548032175/socket.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/socket.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/548032175/inet_addr.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_addr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6e21c2eb532827106ba0b0e18010b48f7be09388 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/548032175" 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_addr.o.d 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_addr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/548032175/inet_addr.o.d" -o ${OBJECTDIR}/_ext/548032175/inet_addr.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_addr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/548032175/inet_ntop.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_ntop.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c41e263e0f77ebe9cf0dafc3a568f00c466b7952 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/548032175" 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_ntop.o.d 
	@${RM} ${OBJECTDIR}/_ext/548032175/inet_ntop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/548032175/inet_ntop.o.d" -o ${OBJECTDIR}/_ext/548032175/inet_ntop.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/socket/inet_ntop.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/609036575/flexible_flash.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/flexible_flash.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a5258a74a683fd7de1ff76dddfefd9c99077b501 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/609036575" 
	@${RM} ${OBJECTDIR}/_ext/609036575/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/609036575/flexible_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/609036575/flexible_flash.o.d" -o ${OBJECTDIR}/_ext/609036575/flexible_flash.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/flexible_flash.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/609036575/spi_flash.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/spi_flash.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9bd9a2b9c487144271699a88987c2cae2efbc932 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/609036575" 
	@${RM} ${OBJECTDIR}/_ext/609036575/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/609036575/spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/609036575/spi_flash.o.d" -o ${OBJECTDIR}/_ext/609036575/spi_flash.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/drv/spi_flash/spi_flash.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/osal/wdrv_winc_osal.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d5697fd581d0310d92b26c8a9651c2365610321 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1784303044" 
	@${RM} ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o.d" -o ${OBJECTDIR}/_ext/1784303044/wdrv_winc_osal.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/osal/wdrv_winc_osal.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_softap.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c818e6abca6f3943a63dfd7ec874eb3f903ee72f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_softap.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_softap.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssfind.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fb0b551bf850a5cf06777c0a9a89c6a1cd721954 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssfind.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssfind.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_sta.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c9f9f452e7cb6953c58c1876e10b9bba2484bb56 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_sta.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_sta.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_wps.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b245187f9319901a224eb03e27b1ea7f74582bbb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_wps.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_wps.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_assoc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1e927ec2b50748367a41471490a450962ecaec02 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_assoc.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_assoc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_socket.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/50801d5cd8a9f12d10499e26fbbfc7bfc5575a87 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_socket.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_socket.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_systime.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/34e322ee166818a78e09aad4fa7cc545bd067c0f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_systime.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_systime.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_enterprise.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/280309f8137dc409ff7d985ce396099054dc1b12 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_enterprise.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_enterprise.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_nvm.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/70f89c5a147f4e6a4483fbbb467443cc886698d4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_nvm.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_nvm.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_httpprovctx.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c04480883f1b9781c79f04485ff809f0069ae603 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_httpprovctx.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_httpprovctx.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_powersave.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2828d77903b6a63ae9a7d12c38d31af70303f847 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_powersave.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_powersave.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_authctx.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/15b8017783a356063b72c304c3dcea0306c12f7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_authctx.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_authctx.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_ssl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/be83604cf8f851c5527a2108a0a72174026fe53c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_ssl.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_ssl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_custie.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8f03acb701828d70a1f5f72d86b894bafa30ff8c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_custie.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_custie.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_host_file.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5cadf0b47367c0a900807bbfa703a1ef102b9cf5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_host_file.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_host_file.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2aa42da9600d6925dddf7dcf85c498df0d67b224 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o: ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssctx.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bae6e18f2f33904d487138099a278949f2cbb9b7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/907429946" 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/907429946/wdrv_winc_bssctx.o ../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/wdrv_winc_bssctx.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1580516298/plib_dmac.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/dmac/plib_dmac.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8e801db2a83c47621bcf789757f031830ec62603 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1580516298" 
	@${RM} ${OBJECTDIR}/_ext/1580516298/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580516298/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1580516298/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1580516298/plib_dmac.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/dmac/plib_dmac.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom2_spi_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/be2ceb1631f532e038bd672afae43db9f636ff78 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014017276" 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o.d" -o ${OBJECTDIR}/_ext/1014017276/plib_sercom2_spi_master.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/sercom/spi_master/plib_sercom2_spi_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399410062/plib_tc4.o: ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc4.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f01a68d2cadeefe037229378a3b728a79fa168ce .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/399410062" 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/399410062/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399410062/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/399410062/plib_tc4.o ../src/config/SAMD21_IOT_WG_ICM42688/peripheral/tc/plib_tc4.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584719636/sys_dma.o: ../src/config/SAMD21_IOT_WG_ICM42688/system/dma/sys_dma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8aeb09f653580036338188243ceb81664a28b5b4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584719636" 
	@${RM} ${OBJECTDIR}/_ext/1584719636/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584719636/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584719636/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1584719636/sys_dma.o ../src/config/SAMD21_IOT_WG_ICM42688/system/dma/sys_dma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1318297016/sys_int.o: ../src/config/SAMD21_IOT_WG_ICM42688/system/int/src/sys_int.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2809539f24fe2a0ac1b373e77677c2963dc54f72 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1318297016" 
	@${RM} ${OBJECTDIR}/_ext/1318297016/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1318297016/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1318297016/sys_int.o.d" -o ${OBJECTDIR}/_ext/1318297016/sys_int.o ../src/config/SAMD21_IOT_WG_ICM42688/system/int/src/sys_int.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/386530258/sys_time.o: ../src/config/SAMD21_IOT_WG_ICM42688/system/time/src/sys_time.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3c41184cced2961abd313fc542e8ed0b8607902b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/386530258" 
	@${RM} ${OBJECTDIR}/_ext/386530258/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/386530258/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/386530258/sys_time.o.d" -o ${OBJECTDIR}/_ext/386530258/sys_time.o ../src/config/SAMD21_IOT_WG_ICM42688/system/time/src/sys_time.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832905403/tasks.o: ../src/config/SAMD21_IOT_WG_ICM42688/tasks.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a65e4855f3fedf7d988417009619b914d97f806f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832905403" 
	@${RM} ${OBJECTDIR}/_ext/1832905403/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832905403/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832905403/tasks.o.d" -o ${OBJECTDIR}/_ext/1832905403/tasks.o ../src/config/SAMD21_IOT_WG_ICM42688/tasks.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/299863938/ssi_comms.o: ../sensiml/ssi_comms.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/33d8defe08a422d2ec994040c7474a029b281f67 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/299863938" 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/_ext/299863938/ssi_comms.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/299863938/ssi_comms.o.d" -o ${OBJECTDIR}/_ext/299863938/ssi_comms.o ../sensiml/ssi_comms.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3808fdd802a2f33cb4ecde92515c1674cf35b987 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/708276922a2af0d2ace86c9b5941b54fde7b599e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7bc8c3232568802023b76798d899adec51f94b3d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o: ../src/winc1500_tcp_client.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1249c2ae7646450f6746f35f03d50ac7d423bf12 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../sensiml" -ffunction-sections -fdata-sections -O1 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o.d" -o ${OBJECTDIR}/_ext/1360937237/winc1500_tcp_client.o ../src/winc1500_tcp_client.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
