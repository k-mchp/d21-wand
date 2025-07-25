/*******************************************************************************
  WINC Example Application

  File Name:
    example.c

  Summary:
    Wi-Fi UDP Server with soft AP example.

  Description:
    This example demonstrates the use of the WINC1500 with the SAMD21 Xplained Pro
    board to start UDP server on WINC1500 running as soft AP

    The configuration defines for this demo are:
        WLAN_SSID           -- Soft AP SSID to create
        WLAN_CHANNEL        -- Channel on which to beacon
        WLAN_AUTH           -- Security for the BSS
        WLAN_WEB_KEY        -- WEP key
        WLAN_WEB_KEY_INDEX  -- WEP key index
        WLAN_DHCP_SRV_ADDR  -- IP address of DHCP server to create
        UDP_BUFFER_SIZE     -- Size of the socket buffer holding the receive data
*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries.
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


/** \mainpage
 * \section intro Introduction
 * This example demonstrates the use of the WINC1500 with the SAMD21 Xplained Pro board
 * to setup a UDP Server in softap mode.<br>
 * It uses the following hardware:
 * - the SAMD21 Xplained Pro.
 * - the WINC1500 on EXT1. / WINC3400 on EXT1
 *
 *
 * \section usage Usage
 * -# Assemble the devices and connect to USB debug cable from PC.
 * -# On the computer, open and configure a terminal application as the follows.
 * \code
 *    Baud Rate : 115200
 *    Data : 8bit
 *    Parity bit : none
 *    Stop bit : 1bit
 *    Flow control : none
 * \endcode
 *
 * -# 1. Power on the board, the board will enter softAP mode
 *  # 2. Connect your personal computer to the network named defined by macro "WLAN_SSID" in example_conf.h file
 * -# 3. For creating a UDP connection, you can use any open source programs (e.g. packet sender or Tera Term)

 * \code
 * ===========================================
 * WINC WiFi UDP Server Soft AP Example
 * ===========================================
 *
 * AP started, you can connect to WINC1500_SOFT_AP
 * On the connected device, start a UDP client connection to 192.168.1.1 on port 6666
 *
 * AP Mode: Station connected
 * AP Mode: Station IP address is 192.168.1.100
 * Bind on socket 0 successful, server_socket = 0
 * Listen on socket 0 successful
 * Connection from  192.168.1.100:55686
 * Receive on socket 1 successful
 * Client sent 13 bytes
 * Client sent Hello Server!
 * Sending a test message to client
 * Socket 1 send completed
 * UDP Server Test Complete!
 * Closing sockets
 *
 * \endcode
 *
 */

#include "app.h"
#include "wdrv_winc_client_api.h"
#include "winc1500_conf.h"

extern APP_DATA appData;

typedef enum
{
    /* Example's state machine's initial state. */
    UDP_SERVER_STATE_INIT=0,
    UDP_SERVER_STATE_WAIT_FOR_STATION,
    UDP_SERVER_STATE_START_UDP_SERVER,
    UDP_SERVER_STATE_SOCKET_LISTENING,
    UDP_SERVER_STATE_RECEIVE,
    UDP_SERVER_SEND_TO_UART,
    UDP_SERVER_STATE_IDLE,
    UDP_SERVER_STATE_ERROR,
} UDP_SERVER_STATES;

/** Message format definitions. */
typedef struct s_msg_wifi_product
{
    uint8_t name[9];
} t_msg_wifi_product;

/** Message format declarations. */
//static t_msg_wifi_product msg_wifi_product =
//{
//    .name = "WINC_H3",
//};

static UDP_SERVER_STATES state;
static SOCKET serverSocket = -1;
static SOCKET udp_client_socket = -1;
static uint8_t recvBuffer[UDP_BUFFER_SIZE];
static WDRV_WINC_BSS_CONTEXT  bssCtx;
static WDRV_WINC_AUTH_CONTEXT authCtx;

static void APP_ExampleSocketEventCallback(SOCKET socket, uint8_t messageType, void *pMessage)
{
    switch(messageType)
    {
        case SOCKET_MSG_BIND:
        {
            tstrSocketBindMsg *pBindMessage = (tstrSocketBindMsg*)pMessage;

            if ((NULL != pBindMessage) && (0 == pBindMessage->status))
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "Bind on socket %d successful, server_socket = %d\r\n", socket, serverSocket);
                //listen(serverSocket, 0);
                memset(recvBuffer, 0, UDP_BUFFER_SIZE);
                recvfrom(socket, recvBuffer, UDP_BUFFER_SIZE, 0);
                state = UDP_SERVER_STATE_SOCKET_LISTENING;
                
            }
            else
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "Bind on socket %d failed\r\n", socket);

                shutdown(serverSocket);
                serverSocket =  -1;
                state = UDP_SERVER_STATE_ERROR;
            }
            break;
        }
#if 0
        case SOCKET_MSG_LISTEN:
        {
            tstrSocketListenMsg *pListenMessage = (tstrSocketListenMsg*)pMessage;

            if ((NULL != pListenMessage) && (0 == pListenMessage->status))
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "Listen on socket %d successful\r\n", socket);
                accept(serverSocket, NULL, NULL);
            }
            else
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "Listen on socket %d failed\r\n", socket);

                shutdown(serverSocket);
                serverSocket =  -1;
                state = UDP_SERVER_STATE_ERROR;
            }
            break;
        }

        case SOCKET_MSG_ACCEPT:
        {
            tstrSocketAcceptMsg *pAcceptMessage = (tstrSocketAcceptMsg*)pMessage;

            if (NULL != pAcceptMessage)
            {
                char s[20];

                accept(serverSocket, NULL, 0);

                if (udp_client_socket > 0) // close any open client (only one client supported at one time)
                {
                    shutdown(udp_client_socket);
                }

                udp_client_socket = pAcceptMessage->sock;

                SYS_CONSOLE_Print(appData.consoleHandle, "Connection from %s:%d\r\n", inet_ntop(AF_INET, &pAcceptMessage->strAddr.sin_addr.s_addr, s, sizeof(s)), _ntohs(pAcceptMessage->strAddr.sin_port));

                memset(recvBuffer, 0, UDP_BUFFER_SIZE);
                //state = UDP_SERVER_STATE_RECEIVE;
               recv(udp_client_socket, recvBuffer, UDP_BUFFER_SIZE, 0);

            }
            else
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "Accept on socket %d failed\r\n", socket);

                shutdown(serverSocket);
                serverSocket =  -1;
                state = UDP_SERVER_STATE_ERROR;
            }
            break;
        }
#endif
        case SOCKET_MSG_RECVFROM:
        {
            tstrSocketRecvMsg *pRecvMessage = (tstrSocketRecvMsg*)pMessage;

            if ((NULL != pRecvMessage) && (pRecvMessage->s16BufferSize > 0))
            {
				SERCOM5_USART_Write(pRecvMessage->pu8Buffer, pRecvMessage->s16BufferSize);
                //SYS_CONSOLE_Print(appData.consoleHandle, "%s", pRecvMessage->pu8Buffer);
                //memset(recvBuffer, 0, UDP_BUFFER_SIZE);
                //state = UDP_SERVER_STATE_RECEIVE;
                //recv(udp_client_socket, recvBuffer, UDP_BUFFER_SIZE, 0);
                memset(recvBuffer, 0, UDP_BUFFER_SIZE);
                recvfrom(socket, recvBuffer, UDP_BUFFER_SIZE, 0);
                
                
            }
            else
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "Receive on socket %d failed\r\n", socket);

                shutdown(serverSocket);
                serverSocket = -1;
                state = UDP_SERVER_STATE_ERROR;
            }
            break;
        }
#if 1
        case SOCKET_MSG_SEND:
        {
            SYS_CONSOLE_Print(appData.consoleHandle, "Socket %d send completed\r\n", socket);
            SYS_CONSOLE_Print(appData.consoleHandle, "UDP Server Test Complete!\r\n");
            SYS_CONSOLE_Print(appData.consoleHandle, "Closing sockets\r\n");
            //shutdown(udp_client_socket);
            //shutdown(serverSocket);
            //state = EXAMP_STATE_DONE;
            //memset(recvBuffer, 0, UDP_BUFFER_SIZE);
            //recv(udp_client_socket, recvBuffer, UDP_BUFFER_SIZE, 0);
            break;
        }
#endif
        default:
        {
            break;
        }
    }
}

static void APP_ExampleAPConnectNotifyCallback(DRV_HANDLE handle, WDRV_WINC_ASSOC_HANDLE assocHandle, WDRV_WINC_CONN_STATE currentState, WDRV_WINC_CONN_ERROR errorCode)
{
    if (WDRV_WINC_CONN_STATE_CONNECTED == currentState)
    {
        SYS_CONSOLE_Print(appData.consoleHandle, "AP Mode: Station connected\r\n");
    }
    else if (WDRV_WINC_CONN_STATE_DISCONNECTED == currentState)
    {
        SYS_CONSOLE_Print(appData.consoleHandle, "AP Mode: Station disconnected\r\n");

        if (-1 != serverSocket)
        {
            shutdown(serverSocket);
            serverSocket = -1;
        }
    }
}

#if defined(WLAN_DHCP_SRV_ADDR) && defined(WLAN_DHCP_SRV_NETMASK)
static void APP_ExampleDHCPAddressEventCallback(DRV_HANDLE handle, uint32_t ipAddress)
{
    char s[20];

    SYS_CONSOLE_Print(appData.consoleHandle, "AP Mode: Station IP address is %s\r\n", inet_ntop(AF_INET, &ipAddress, s, sizeof(s)));
    state = UDP_SERVER_STATE_START_UDP_SERVER;
}
#endif

void APP_ExampleInitialize(DRV_HANDLE handle)
{
    SYS_CONSOLE_Print(appData.consoleHandle, "\r\n");
    SYS_CONSOLE_Print(appData.consoleHandle, "===========================================\r\n");
    SYS_CONSOLE_Print(appData.consoleHandle, "WINC WiFi UDP Server Soft AP Example\r\n");
    SYS_CONSOLE_Print(appData.consoleHandle, "===========================================\r\n");
    SYS_CONSOLE_Print(appData.consoleHandle, "\r\n");

    state = UDP_SERVER_STATE_INIT;

    serverSocket = -1;
}

void APP_ExampleTasks(DRV_HANDLE handle)
{
    switch (state)
    {
        case UDP_SERVER_STATE_INIT:
        {
            /* Preset the error state incase any following operations fail. */

            state = UDP_SERVER_STATE_ERROR;

            /* Create the BSS context using default values and then set SSID
             and channel. */

            if (WDRV_WINC_STATUS_OK != WDRV_WINC_BSSCtxSetDefaults(&bssCtx))
            {
                break;
            }

            if (WDRV_WINC_STATUS_OK != WDRV_WINC_BSSCtxSetSSID(&bssCtx, (uint8_t*)WLAN_SSID, strlen(WLAN_SSID)))
            {
                break;
            }

            if (WDRV_WINC_STATUS_OK != WDRV_WINC_BSSCtxSetChannel(&bssCtx, WLAN_CHANNEL))
            {
                break;
            }

#if defined(WLAN_AUTH_OPEN)
            /* Create authentication context for Open. */

            if (WDRV_WINC_STATUS_OK != WDRV_WINC_AuthCtxSetOpen(&authCtx))
            {
                break;
            }
#endif

#if defined(WLAN_DHCP_SRV_ADDR) && defined(WLAN_DHCP_SRV_NETMASK)
            /* Enable use of DHCP for network configuration, DHCP is the default
             but this also registers the callback for notifications. */

            if (WDRV_WINC_STATUS_OK != WDRV_WINC_IPDHCPServerConfigure(handle, inet_addr(WLAN_DHCP_SRV_ADDR), inet_addr(WLAN_DHCP_SRV_NETMASK), &APP_ExampleDHCPAddressEventCallback))
            {
                break;
            }
#endif
            /* Register callback for socket events. */

            WDRV_WINC_SocketRegisterEventCallback(handle, &APP_ExampleSocketEventCallback);

            /* Create the AP using the BSS and authentication context. */

            if (WDRV_WINC_STATUS_OK == WDRV_WINC_APStart(handle, &bssCtx, &authCtx, NULL, &APP_ExampleAPConnectNotifyCallback))
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "AP started, you can connect to %s\r\n", WLAN_SSID);
                SYS_CONSOLE_Print(appData.consoleHandle, "On the connected device, start a UDP client connection to %s on port %d\r\n\r\n", WLAN_DHCP_SRV_ADDR, UDP_LISTEN_PORT);

                state = UDP_SERVER_STATE_WAIT_FOR_STATION;
            }
            break;
        }

        case UDP_SERVER_STATE_WAIT_FOR_STATION:
        {
            break;
        }

        case UDP_SERVER_STATE_START_UDP_SERVER:
        {
            /* Create the server socket. */

            serverSocket = socket(AF_INET, SOCK_DGRAM, 0);

            if (serverSocket >= 0)
            {
                struct sockaddr_in addr;

                /* Listen on the socket. */

                addr.sin_family = AF_INET;
                addr.sin_port = _htons(UDP_LISTEN_PORT);
                addr.sin_addr.s_addr = _htonl(0xC0A800C2);
                //addr.sin_addr.s_addr = 0;

                if (bind(serverSocket, (struct sockaddr*)&addr, sizeof(struct sockaddr_in)) < 0)
                {
                    SYS_CONSOLE_Print(appData.consoleHandle, "Socket bind error\r\n");
                    state = UDP_SERVER_STATE_ERROR;
                    break;
                }

                state = UDP_SERVER_STATE_IDLE;
            }
            else
            {
                SYS_CONSOLE_Print(appData.consoleHandle, "Socket creation error\r\n");
                state = UDP_SERVER_STATE_ERROR;
                break;
            }
            break;
        }

        case UDP_SERVER_STATE_SOCKET_LISTENING:
        {
            //memset(recvBuffer, 0, UDP_BUFFER_SIZE);
            //recvfrom(udp_client_socket, recvBuffer, UDP_BUFFER_SIZE, 0);
            break;
        }
#if 0
        case UDP_SERVER_STATE_RECEIVE:
        {
            recv(udp_client_socket, recvBuffer, UDP_BUFFER_SIZE, 0);
            state = UDP_SERVER_STATE_IDLE;
            break;
        }
        case UDP_SERVER_SEND_TO_UART:
        {
            SYS_CONSOLE_Print(appData.consoleHandle, "%s", recvBuffer);
            memset(recvBuffer, 0, UDP_BUFFER_SIZE);
            state = UDP_SERVER_STATE_RECEIVE;
            break;
        }
#endif
        case UDP_SERVER_STATE_IDLE:
        {
            break;
        }

        case UDP_SERVER_STATE_ERROR:
        {
            break;
        }

        default:
        {
            break;
        }
    }
}
