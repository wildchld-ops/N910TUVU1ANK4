.class public Landroid/net/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMonitor$MonitorThread;,
        Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    }
.end annotation


# static fields
.field private static final ACTION_FRAME_VS_WES:I = 0x65

.field public static final ACTION_FRAME_VS_WES_EVENT:I = 0x24065

.field private static final ACTION_FRAME_VS_WES_STR:Ljava/lang/String; = "ACTION-FRAME-VS-WES"

.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final BASE:I = 0x24000

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static final CUSTOM_EVENT:I = 0x13

.field private static final DBG:Z

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EAP_ID_REQ_STR:Ljava/lang/String; = "CTRL-REQ-IDENTITY"

.field private static final EAP_NOTIFICATION:I = 0xc

.field public static final EAP_TLS_FINISH:I = 0x24046

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field private static final EVENT_S69_DEVICE_ADDED:Ljava/lang/String; = "S69_DEVICE_ADDED"

.field private static final EVENT_S69_DEVICE_REMOVED:Ljava/lang/String; = "S69_DEVICE_REMOVED"

.field private static final EVENT_S69_RESPONSE:Ljava/lang/String; = "S69_RESPONCE_RECEIVED"

.field private static final EVENT_TERMINATING_STR:Ljava/lang/String; = "CTRL-EVENT-TERMINATING"

.field private static final HANDOVER:I = 0x14

.field public static final HANDOVER_EVENT:I = 0x24012

.field private static final HANDOVER_STR:Ljava/lang/String; = "TRYING-HANDOVER"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_ANQP_COMPELTE:I = 0x2403e

.field private static final HS20_ANQP_COMPELTE_STR:Ljava/lang/String; = "HS20_ANQP_COMPLETE"

.field public static final HS20_CONFIGURATION_UPDATE:I = 0x2403f

.field private static final HS20_CONFIGURATION_UPDATE_STR:Ljava/lang/String; = "HS20_CONFIGURATION_UPDATE"

.field public static final HS20_CONNECTABLE_AP_FOUND:I = 0x2403d

.field private static final HS20_CONNECTABLE_AP_FOUND_STR:Ljava/lang/String; = "HS20_CONNECTABLE_AP_FOUND"

.field public static final HS20_DISABLED_COMPLETE:I = 0x24040

.field private static final HS20_DISABLED_COMPLETE_STR:Ljava/lang/String; = "HS20_DISABLED_COMPLETE"

.field private static final HS20_EVENT_PREFIX_STR:Ljava/lang/String; = "HS20"

.field public static final HS20_EXPIRY_TIME_FOUND:I = 0x24042

.field private static final HS20_EXPIRY_TIME_FOUND_STR:Ljava/lang/String; = "HS20_EXPIRY_TIME_FOUND"

.field public static final HS20_READY_TO_CONNECT:I = 0x24041

.field private static final HS20_READY_TO_CONNECT_STR:Ljava/lang/String; = "HS20_READY_TO_CONNECT"

.field public static final KT_NOTIFICATION_EVENT:I = 0x2406f

.field private static final KT_NOTIFICATION_STR:Ljava/lang/String; = "KT-NOTIFICATION"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field private static final MONITOR_SOCKET_CLOSED_STR:Ljava/lang/String; = "connection closed"

.field private static final MSAP_EVENT_PREFIX_STR:Ljava/lang/String; = "MSAP"

.field public static final MSAP_GAS_REQ_STATUS:I = 0x24053

.field private static final MSAP_GAS_REQ_STATUS_STR:Ljava/lang/String; = "MSAP-GAS-REQ-STATUS"

.field public static final MSAP_GAS_RSP_AVAILABLE:I = 0x24052

.field private static final MSAP_GAS_RSP_AVAILABLE_STR:Ljava/lang/String; = "MSAP-GAS-RESPONSE-INFO"

.field public static final MSAP_VENUE_SERVER_ADDED:I = 0x24050

.field private static final MSAP_VENUE_SERVER_ADDED_STR:Ljava/lang/String; = "MSAP-VENUE-SERVER-ADDED"

.field public static final MSAP_VENUE_SERVER_DELETED:I = 0x24051

.field private static final MSAP_VENUE_SERVER_DELETED_STR:Ljava/lang/String; = "MSAP-VENUE-SERVER-DELETED"

.field private static final MSG:I = 0x12

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field private static final NOTIFICATION:I = 0x11

.field private static final NO_MATCH_AP:I = 0xb

.field private static final NO_MATCH_AP_CONNECTION_STR:Ljava/lang/String; = "NO-CONNECTION"

.field public static final NO_MATCH_AP_EVENT:I = 0x2400d

.field public static final P2P_BOOSTER_DISABLE_EVENT:I = 0x24033

.field private static final P2P_BOOSTER_DISABLE_STR:Ljava/lang/String; = "P2P-BOOSTER-DISABLE"

.field public static final P2P_BOOSTER_ENABLE_EVENT:I = 0x24032

.field private static final P2P_BOOSTER_ENABLE_STR:Ljava/lang/String; = "P2P-BOOSTER-ENABLE"

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_NO_COMMON_CHANNEL:I = 0x24079

.field private static final P2P_NO_COMMON_CHANNEL_STR:Ljava/lang/String; = "P2P-NO-COMMON-CHANNEL"

.field public static final P2P_P2P_SCONNECT_PROBE_REQ_EVENT:I = 0x24083

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_EXTNFC_RSP_EVENT:I = 0x24082

.field private static final P2P_PROV_DISC_EXTNFC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-EXTNFC-RESP"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field private static final P2P_PROV_DISC_PBC_USER_REJECT_STR:Ljava/lang/String; = "P2P-PROV-DISC-USER-REJECT"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_PROV_DISC_USER_REJECT_EVENT:I = 0x24084

.field private static final P2P_SCONNECT_PROBE_REQ_STR:Ljava/lang/String; = "P2P-SCONNECT-PROBE-REQ"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field public static final P2P_WPS_SKIP_EVENT:I = 0x24034

.field private static final P2P_WPS_SKIP_STA_STR:Ljava/lang/String; = "P2P-WPS-SKIP-STA"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field public static final S69_DEVICE_ADDED:I = 0x2407b

.field public static final S69_DEVICE_REMOVED:I = 0x2407c

.field public static final S69_RESPONSE_RECEIVED:I = 0x2407a

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field public static final SCC_DIFF_EVENT:I = 0x24011

.field private static final SCC_DIFF_FREQ:I = 0x10

.field private static final SCC_DIFF_FREQ_STR:Ljava/lang/String; = "CTRL-EVENT-SCC-DIFF-FREQ"

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final TRYINGASSOC_STR:Ljava/lang/String; = "TRYING-ASSOC"

.field private static final TRYING_ASSOC:I = 0xd

.field private static final UNKNOWN:I = 0xa

.field public static final WAPI_AUTHENTICATION_FAILURE_EVENT:I = 0x2400f

.field private static final WAPI_AUTHENTICATION_FAILURE_STR:Ljava/lang/String; = "authentication failed"

.field public static final WAPI_CERTIFICATION_FAILURE_EVENT:I = 0x24010

.field private static final WAPI_CERTIFICATION_FAILURE_STR:Ljava/lang/String; = "certificate initialization failed"

.field private static final WAPI_EVENT_PREFIX_STR:Ljava/lang/String; = "WAPI:"

.field public static final WIFI_ERRORCODE:Z

.field private static final WPA_EVENT_EAP_TLS_CERT_ERROR:Ljava/lang/String; = "CTRL-EVENT-EAP-TLS-CERT-ERROR"

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static final _N3_WIFI_CUSTOM_EVENT:Ljava/lang/String; = "com.netcube.wifi.customevent"

.field private static final _N3_WIFI_MSG:Ljava/lang/String; = "com.netcube.wifi.msg"

.field private static final _N3_WIFI_NOTIFICATION:Ljava/lang/String; = "com.netcube.wifi.notification"

.field private static final customEvent:Ljava/lang/String; = "CUSTOM-EVENT"

.field private static final eapNotificationEvent:Ljava/lang/String; = "EAP-NOTIFICATION"

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern; = null

.field private static mEapMethod:Ljava/lang/String; = null

.field private static final msgEvent:Ljava/lang/String; = "MSG"

.field private static final notificationEvent:Ljava/lang/String; = "EAP-NOTIFICATION"

.field private static final wpsEventPrefix:Ljava/lang/String; = "WPS-"

.field private static final wpsEventPrefixLen:I


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private final mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/WifiMonitor;->DBG:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    const-string v0, "WPS-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/wifi/WifiMonitor;->wpsEventPrefixLen:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;

    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiMonitor"

    const-string v1, "Creating WifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v0, p2, Landroid/net/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Landroid/net/wifi/WifiMonitor;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public killSupplicant(Z)V
    .locals 1

    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    return-void
.end method

.method public startMonitoring()V
    .locals 2

    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)V

    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    return-void
.end method
