# cmake files support debug production
include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_library_list )

# Handle files with suffix s, for group SAMD21_IOT_WG_ICM42688-XC32
if(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_assemble)
add_library(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assemble OBJECT ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_assemble})
    samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assemble_rule(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assemble)
    list(APPEND samd21_iot_wand_SAMD21_IOT_WG_ICM42688_library_list "$<TARGET_OBJECTS:samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assemble>")
endif()

# Handle files with suffix S, for group SAMD21_IOT_WG_ICM42688-XC32
if(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_assembleWithPreprocess)
add_library(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assembleWithPreprocess OBJECT ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_assembleWithPreprocess})
    samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assembleWithPreprocess_rule(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assembleWithPreprocess)
    list(APPEND samd21_iot_wand_SAMD21_IOT_WG_ICM42688_library_list "$<TARGET_OBJECTS:samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_assembleWithPreprocess>")
endif()

# Handle files with suffix [cC], for group SAMD21_IOT_WG_ICM42688-XC32
if(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_compile)
add_library(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile OBJECT ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_compile})
    samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile_rule(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile)
    list(APPEND samd21_iot_wand_SAMD21_IOT_WG_ICM42688_library_list "$<TARGET_OBJECTS:samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile>")
endif()

# Handle files with suffix cpp, for group SAMD21_IOT_WG_ICM42688-XC32
if(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_compile_cpp)
add_library(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile_cpp OBJECT ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_compile_cpp})
    samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile_cpp_rule(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile_cpp)
    list(APPEND samd21_iot_wand_SAMD21_IOT_WG_ICM42688_library_list "$<TARGET_OBJECTS:samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_compile_cpp>")
endif()

add_executable(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_library_list})

set_target_properties(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_output_dir})
set_target_properties(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe PROPERTIES OUTPUT_NAME "SAMD21_IOT_WG_ICM42688")
set_target_properties(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe PROPERTIES SUFFIX ".elf")

target_link_libraries(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe PRIVATE ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_SAMD21_IOT_WG_ICM42688_XC32_FILE_TYPE_link})


# Add the link options from the rule file.
samd21_iot_wand_SAMD21_IOT_WG_ICM42688_link_rule(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe)

# Add bin2hex target for converting built file to a .hex file.
string(REGEX REPLACE [.]elf$ .hex samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image_name_hex ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image_name})
add_custom_target(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_Bin2Hex ALL
    COMMAND ${MP_BIN2HEX} \"${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_output_dir}/${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image_name}\"
    BYPRODUCTS ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_output_dir}/${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image_name_hex}
    COMMENT "Convert built file to .hex")
add_dependencies(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_Bin2Hex samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe)




# The following code exposes targets created in this project so they
# may be consumed by other projects

if(enable_dependent_codesamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe)
    add_custom_command(
        OUTPUT ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_output_dir}/${sourceFileNamesamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe}.c
        COMMAND ${MP_BIN2HEX} --image ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_full_path_to_image} --image-generated-c ${sourceFileNamesamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe}.c --image-generated-h ${sourceFileNamesamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe}.h --image-copy-mode ${modesamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe} --image-offset ${addresssamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe}
        WORKING_DIRECTORY ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_output_dir}
        DEPENDS samd21_iot_wand_SAMD21_IOT_WG_ICM42688_image__A9k5yNe)
    add_custom_target(
        samd21_iot_wand_SAMD21_IOT_WG_ICM42688_processed_fileimage__A9k5yNe 
        DEPENDS ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_output_dir}/${sourceFileNamesamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe}.c
        )
    add_library(
        samd21_iot_wand_SAMD21_IOT_WG_ICM42688_processed_file_objectimage__A9k5yNe
        OBJECT
        EXCLUDE_FROM_ALL
        ${samd21_iot_wand_SAMD21_IOT_WG_ICM42688_output_dir}/${sourceFileNamesamd21_iot_wand_SAMD21_IOT_WG_ICM42688__A9k5yNe}.c)
    add_dependencies(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_processed_file_objectimage__A9k5yNe samd21_iot_wand_SAMD21_IOT_WG_ICM42688_processed_fileimage__A9k5yNe)
    add_library(
        samd21_iot_wand_SAMD21_IOT_WG_ICM42688_dependent_image__A9k5yNe
        INTERFACE
        EXCLUDE_FROM_ALL)
    target_link_libraries(samd21_iot_wand_SAMD21_IOT_WG_ICM42688_dependent_image__A9k5yNe
    INTERFACE    
 samd21_iot_wand_SAMD21_IOT_WG_ICM42688_processed_file_objectimage__A9k5yNe)
endif()


