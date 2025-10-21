# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/C51209/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assemble_rule target)
    set(options
        "-g"
        "${ASSEMBLER_PRE}"
        "-mprocessor=ATSAMD21G18A"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--gdwarf-2,-I${CMAKE_CURRENT_SOURCE_DIR}/../../..,-I${CMAKE_CURRENT_SOURCE_DIR}/../../../../Icm426xx"
        "-mdfp=${PACK_REPO_PATH}/Microchip/SAMD21_DFP/3.6.144/samd21a")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "__DEBUG=1")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../.."
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../sensiml")
endfunction()
function(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assembleWithPreprocess_rule target)
    set(options
        "-x"
        "assembler-with-cpp"
        "-g"
        "${MP_EXTRA_AS_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/SAMD21_DFP/3.6.144/samd21a"
        "-mprocessor=ATSAMD21G18A"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I${CMAKE_CURRENT_SOURCE_DIR}/../../..")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_SAMD21_IOT_WG_ICM42688=SAMD21_IOT_WG_ICM42688")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
endfunction()
function(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "-x"
        "c"
        "-c"
        "-mprocessor=ATSAMD21G18A"
        "-O2"
        "-fno-common"
        "-mdfp=${PACK_REPO_PATH}/Microchip/SAMD21_DFP/3.6.144/samd21a")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "SNSR_TYPE_ICM42688=1"
        PRIVATE "ICM42688"
        PRIVATE "XPRJ_SAMD21_IOT_WG_ICM42688=SAMD21_IOT_WG_ICM42688")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../Icm426xx"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../sensiml"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include/dev"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include/drv/bsp"
        PRIVATE "../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include/drv/bsp/include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include/drv/common"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include/drv/driver"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include/drv/socket"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688/driver/winc/include/drv/spi_flash"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/packs/ATSAMD21G18A_DFP"
        PRIVATE "../src/packs/CMSIS"
        PRIVATE "../src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../.."
        PRIVATE "${PACK_REPO_PATH}/ARM/CMSIS/5.4.0/CMSIS/Core/Include")
endfunction()
function(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile_cpp_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=ATSAMD21G18A"
        "-frtti"
        "-fexceptions"
        "-fno-check-new"
        "-fenforce-eh-specs"
        "-ffunction-sections"
        "-fno-common"
        "-mdfp=${PACK_REPO_PATH}/Microchip/SAMD21_DFP/3.6.144/samd21a")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_SAMD21_IOT_WG_ICM42688=SAMD21_IOT_WG_ICM42688")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../Icm426xx"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../sensiml"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/SAMD21_IOT_WG_ICM42688"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/packs/ATSAMD21G18A_DFP"
        PRIVATE "../src/packs/CMSIS"
        PRIVATE "../src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../.."
        PRIVATE "${PACK_REPO_PATH}/ARM/CMSIS/5.4.0/CMSIS/Core/Include")
endfunction()
function(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_dependentObject_rule target)
    set(options
        "-mprocessor=ATSAMD21G18A"
        "-mdfp=${PACK_REPO_PATH}/Microchip/SAMD21_DFP/3.6.144/samd21a")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
endfunction()
function(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_link_rule target)
    set(options
        "-g"
        "${MP_EXTRA_LD_PRE}"
        "${DEBUGGER_OPTION_TO_LINKER}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=ATSAMD21G18A"
        "-mno-device-startup-code"
        "-Wl,--defsym=__MPLAB_BUILD=1${MP_EXTRA_LD_POST},--script=${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_LINKER_SCRIPT},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=_min_heap_size=512,--gc-sections,-u,_printf_float,-L${CMAKE_CURRENT_SOURCE_DIR}/../../..,--memorysummary,memoryfile.xml"
        "-mdfp=${PACK_REPO_PATH}/Microchip/SAMD21_DFP/3.6.144/samd21a"
        "")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_SAMD21_IOT_WG_ICM42688=SAMD21_IOT_WG_ICM42688")
endfunction()
