
/*******************************************************************************
* Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/

#include "kbalgorithms.h"

/*!
 * \brief Transform the sensor data into magnitude and add it to input_data
 *
 * \param rawdata Raw sensor data array pointer.
 * \param cols_to_use array of columns to use from rawdata
 * \param num_cols number of columns to use
 * \param input_data Pointer to the new framedata array
 */
int32_t tr_sensor_magnitude(int16_t *rawdata, int16_data_t *cols_to_use, int16_t *input_data)
{
    int32_t icol;
    int32_t col;

    int32_t norm = 0;

    for (icol = 0; icol < cols_to_use->size; icol++)
    {
        col = cols_to_use->data[icol];
        norm += rawdata[col] * rawdata[col];
    }

    norm = SQRT(norm);

    if (cols_to_use->size > 0)
    {
        input_data[0] = (uint16_t)(norm / cols_to_use->size);
    }
    else
    {
        input_data[0] = (uint16_t)(norm);
    }

    return 1;
}
