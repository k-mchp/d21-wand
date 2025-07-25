/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "wdrv_winc_client_api.h"
#include "app_config.h"
#include "ws2812.h"

#if defined(UDP)
void UDP_Client_Initialize(DRV_HANDLE handle);
void UDP_Client_Tasks(DRV_HANDLE handle);
#else
void TCP_Client_Initialize(DRV_HANDLE handle);
void TCP_Client_Tasks(DRV_HANDLE handle);
#endif
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
static DRV_HANDLE wdrvHandle;
// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************




// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    LED_BUTTON_PA03_Set(); //Turn on button LED upon startup
    
    ws2812_init();
    ws2812_set_pixel(0, 0, 255, 255);
    ws2812_show();


}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            #if STREAM_FORMAT_IS(WIFI)  
            if (SYS_STATUS_READY == WDRV_WINC_Status(sysObj.drvWifiWinc))
            {
                appData.state = APP_STATE_WDRV_INIT_READY;
            }
            #endif

            break;
        }

        case APP_STATE_WDRV_INIT_READY:
        {
            #if STREAM_FORMAT_IS(WIFI)
            wdrvHandle = WDRV_WINC_Open(0, 0);

            if (DRV_HANDLE_INVALID != wdrvHandle)
            {
#if defined(UDP) 
                UDP_Client_Initialize(wdrvHandle);
#else                
                TCP_Client_Initialize(wdrvHandle);
#endif                 
                appData.state = APP_STATE_WDRV_OPEN;
            }
            #endif
            break;
        }

        case APP_STATE_WDRV_OPEN:
        {   
            #if STREAM_FORMAT_IS(WIFI)
#if defined(UDP) 
            UDP_Client_Tasks(wdrvHandle);
#else                
            TCP_Client_Tasks(wdrvHandle);
#endif  
            #endif
            break;
        }

        /* The default state should never be executed. */
        default:
        {
            
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
