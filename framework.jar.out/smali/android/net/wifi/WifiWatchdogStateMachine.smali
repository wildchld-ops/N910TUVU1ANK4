.class public Landroid/net/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$4;,
        Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_POLL:I = 0x21035

.field private static final ACTIVITY_CHECK_START:I = 0x21033

.field private static final ACTIVITY_CHECK_STOP:I = 0x21034

.field public static final AUTO_NETWORK_SWITCH_TURNED_ON_SCAN_DEFER_DURATION:J = 0x2ee0L

.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_MODE:I = 0xb

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_MODE:I = 0xe

.field private static final CAPTIVE_PORTAL_CHECK_NONE_MODE:I = 0xd

.field private static final CAPTIVE_PORTAL_CHECK_STATE:I = 0x2102a

.field static final CAPTIVE_PORTAL_EVENT_AUTHENTICATED:I = 0x2101c

.field static final CAPTIVE_PORTAL_EVENT_DETECTED:I = 0x2101a

.field static final CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE:I = 0x2101b

.field static final CAPTIVE_PORTAL_EVENT_EXPIRED:I = 0x2101e

.field private static final CAPTIVE_PORTAL_RESULT_DETECTED:I = 0x1

.field private static final CAPTIVE_PORTAL_RESULT_NONE:I = 0x0

.field private static final CAPTIVE_PORTAL_RESULT_NO_INTERNET:I = 0x2

.field private static final CAPTIVE_PORTAL_RESULT_TIMEOUT:I = 0x3

.field static final CAPTIVE_PORTAL_STATE_EVENT:I = 0x21019

.field private static final CHECK_CAPTIVE_PORTAL:I = 0x2102b

.field private static final CMD_QUALITY_CHECK:I = 0x21020

.field private static final CMD_QUALITY_RECHECK:I = 0x2100c

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static final CMD_RTT_204_TEST:I = 0x21021

.field private static final CMD_RTT_GOOGLE_TEST:I = 0x21022

.field private static final CONNECT_CAPTIVE_PORTAL:I = 0x2102d

.field private static final DATA_RATE_THRESHOLD:I = 0x5

.field private static DBG:Z = false

.field private static final DEFAULT_DNS_PING_TIMEOUT_MS:I = 0xbb8

.field private static final DEFAULT_GOOD_RX_PACKETS_BASE:I = 0x1e

.field private static final DEFAULT_MIN_DNS_RESPONSES:I = 0x1

.field private static final DEFAULT_MSS:I = 0x596

.field private static final DEFAULT_NO_RX_PACKETS_LIMIT:I = 0x2

.field private static final DEFAULT_NUM_DNS_PINGS:I = 0x2

.field private static final DEFAULT_PACKET_SIZE:I = 0x5cc

.field private static final DEFAULT_PASS_PACKETS:I = 0x5

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field private static final DEFAULT_POOR_RX_PACKETS_LIMIT:I = 0xf

.field private static final DEFAULT_QC_REPEAT:I = 0x1

.field private static final DEFAULT_QC_SETS:I = 0x2

.field private static final DEFAULT_QC_TIMEOUT_SEC:I = 0x1

.field private static final DEFAULT_URL:Ljava/lang/String; = "http://www.google.com"

.field private static DEFAULT_URL_STRING:Ljava/lang/String; = null

.field private static final DELAYED_QUALITY_CHECK:I = 0x2101f

.field private static final DNS_INTRATEST_PING_INTERVAL_MS:I = 0x0

.field private static final DNS_START_DELAY_MS:I = 0x64

.field private static final EVENT_AUTHENTICATION_COMPLETE:I = 0x21047

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_DHCP_SESSION_COMPLETE:I = 0x21045

.field private static final EVENT_DHCP_SESSION_STARTED:I = 0x21044

.field private static final EVENT_ENABLE_HIPRI:I = 0x21042

.field private static final EVENT_MOBILE_CONNECTED:I = 0x2103f

.field private static final EVENT_MOBILE_HIPRI_CONNECTED:I = 0x21040

.field private static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x21043

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCAN_COMPLETE:I = 0x2103e

.field private static final EVENT_SCAN_STARTED:I = 0x2103d

.field private static final EVENT_SCAN_TIMEOUT:I = 0x21046

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_SWITCH_TIMEOUT:I = 0x21041

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field private static FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D = 0.0

.field private static FD_DISCONNECT_THRESHOLD:D = 0.0

.field private static FD_EMA_ALPHA:I = 0x0

.field private static FD_EVAL_LEAD_TIME:I = 0x0

.field private static FD_EVAULATE_COUNT:I = 0x0

.field private static FD_MA_UNIT:I = 0x0

.field private static FD_MA_UNIT_SAMPLE_COUNT:I = 0x0

.field private static FD_RAW_RSSI_SIZE:I = 0x0

.field private static FD_RSSI_LOW_THRESHOLD:I = 0x0

.field private static FD_RSSI_SLOPE_EXP_COEFFICIENT:D = 0.0

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.2

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final L2_CONNECTED:I = 0x4

.field private static final L2_CONNECTING:I = 0x2

.field private static final L2_DISCONNECTED:I = 0x1

.field private static final L2_RECONNECTING:I = 0x3

.field static final LINK_DETECTION_DISABLED:I = 0x21017

.field private static LINK_MONITORING_SAMPLING_INTERVAL_MS:J = 0x0L

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static LINK_SAMPLING_INTERVAL_MS:J = 0x0L

.field public static final LINK_STATUS_EXTRA_INFO_CAPTIVE_PORTAL:I = 0x1

.field public static final LINK_STATUS_EXTRA_INFO_NONE:I = 0x0

.field public static final LINK_STATUS_EXTRA_INFO_NO_INTERNET:I = 0x3

.field public static final LINK_STATUS_EXTRA_INFO_POOR_DISCONNECT:I = 0x4

.field public static final LINK_STATUS_EXTRA_INFO_POOR_LINK:I = 0x2

.field private static final LIST1:[Ljava/lang/String;

.field private static final LIST2:[Ljava/lang/String;

.field private static final LIST3:[Ljava/lang/String;

.field private static final MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field private static final MAX_PAUSE_TIME:I = 0x1b7740

.field private static final MAX_TIME_AVOID_LIMIT:I = 0xa

.field private static final MONITORING_TIMEOUT:I = 0x1e

.field static final NEED_FETCH_RSSI_AND_LINKSPEED:I = 0x21018

.field private static final PATH_OF_RESULT:Ljava/lang/String; = "/data/log/"

.field private static final POLICY_AFTER_CONNECTION:I = 0x2

.field private static final POLICY_BEFORE_CONNECTION:I = 0x1

.field private static final POLICY_DISABLED:I = 0x0

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static final QC_CONNECTION_TIMEOUT_SEC:I = 0x3

.field private static final QC_FAILED_BY_HIGH_LOSS:I = 0x21031

.field private static final QC_FAIL_CAPTIVE_PORTAL:I = 0x9

.field private static final QC_FAIL_DNS_CAPTIVE_PORTAL:I = 0x6

.field private static final QC_FAIL_DNS_CHECK_FAIL:I = 0x5

.field private static final QC_FAIL_DNS_NO_DNS_LIST:I = 0x3

.field private static final QC_FAIL_DNS_NO_RESOLVED_URL:I = 0x1

.field private static final QC_FAIL_DNS_PRIVATE_IP:I = 0x2

.field private static final QC_FAIL_DNS_RESOLVED_IP_NOT_IPV4:I = 0x4

.field private static final QC_FAIL_DNS_TIMEOUT:I = 0x7

.field private static final QC_FAIL_TCP_CONNECT_TIMEOUT:I = 0x8

.field private static final QC_FAIL_TRAFFIC_LOW_RSSI:I = 0xc

.field private static final QC_FAIL_TRAFFIC_NO_INTERNET:I = 0xa

.field private static final QC_FAIL_TRAFFIC_POOR_LINK:I = 0xb

.field private static final QC_GOOD_RX_DETECTED:I = 0x21028

.field private static final QC_HANDLER_NUM:I = 0x1

.field private static final QC_HISTORY_COUNT_MAX:I = 0x1e

.field private static final QC_HTTP_GET_BUFFER_SIZE:I = 0x1400

.field private static final QC_INIT_ID:I = 0x1

.field private static final QC_REDIRECT:I = 0x21029

.field private static final QC_RESOLVE_HOSTNAME_TIMEOUT:I = 0x21025

.field private static final QC_RESULT_RECEIVED:I = 0x21027

.field private static final QC_RETRY_LIMIT:I = 0x3

.field private static final QC_STEP_CAPTIVE_PORTAL:I = 0x3

.field private static final QC_STEP_DNS:I = 0x1

.field private static final QC_STEP_TCP_HS:I = 0x2

.field private static final QC_STEP_TRAFFIC:I = 0x4

.field private static final QC_TRIGGER_BAD_QUALITY:I = 0x5

.field private static final QC_TRIGGER_CAPTIVE_PORTAL:I = 0x4

.field private static final QC_TRIGGER_RECHECK_BAD_QUALITY:I = 0x9

.field private static final QC_TRIGGER_RECHECK_DNS_FAILURE:I = 0x8

.field private static final QC_TRIGGER_RECHECK_NO_DNS_LIST:I = 0x7

.field private static final QC_TRIGGER_RECHECK_NO_SYNACK:I = 0x6

.field private static final QC_TRIGGER_VERIFYING_FAIL_BAD_QUALITY:I = 0x3

.field private static final QC_TRIGGER_VERIFYING_FAIL_DNS:I = 0x2

.field private static final QC_TRIGGER_VERIFYING_NORMAL:I = 0x1

.field private static final QUALITY_CHECK_RESULT_NO_INTERNET:I = 0x0

.field private static final QUALITY_CHECK_RESULT_SKIP:I = -0x1

.field private static final QUALITY_CHECK_RESULT_TIMEOUT:I = 0x1

.field private static final QUALITY_CHECK_START:I = 0x21026

.field private static final QUALITY_CHECK_TIMEOUT:I = 0x21024

.field private static final REPORT_QC_RESULT:I = 0x21023

.field static final REQUEST_POWER_SAVE_OFF:I = 0x21013

.field static final REQUEST_POWER_SAVE_ON:I = 0x21014

.field private static final RESULT_CAPTIVE_PORTAL:I = 0x2102c

.field private static final RESUME_CAPTIVE_PORTAL_CHECK:I = 0x21030

.field private static final RSSI_THRESHOLD:I = -0x50

.field private static final SCAN_TIMEOUT:I = 0x1388

.field private static SMARTCM_DBG:Z = false

.field private static final SMARTCM_VALUE_FILE:Ljava/lang/String; = "/data/misc/wifi/.smartCM"

.field private static final STATUS_CODE_CAPTIVE_PORTAL:I = 0x2102e

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine"

.field private static final TCP_HEADER_SIZE:I = 0x36

.field private static final TEST_LIST:[Ljava/lang/String;

.field private static final TIMEOUT_CAPTIVE_PORTAL:I = 0x2102f

.field private static final USE_PUBLIC_DNS:Z = false

.field private static final VERIFYING_STATE_PASS_PACKETS:I = 0xf

.field private static final VERSION:I = 0x1

.field private static final WLANQCPATH_PROP_NAME:Ljava/lang/String; = "wlan.qc.path"

.field private static bUpdateLinkMonitor:I

.field private static lock:Ljava/lang/Object;

.field private static mCurrentApDefault:Z

.field private static mEnableSnsDuringConnected:Z

.field private static final mIgnorableApMASK:[I

.field private static mRawRssiEMA:D

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z

.field private static stayAwake:Z


# instance fields
.field private bSetQcResult:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptivePortalCheckMode:I

.field private mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

.field private mCaptivePortalSocket:Ljava/net/Socket;

.field private mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCouldNotIdentifyCaptivePortalState:Z

.field private mCountryIso:Ljava/lang/String;

.field private mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLinkSpeed:I

.field private mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

.field private mCurrentRssi:I

.field private mCurrentSignalLevel:I

.field private mDataRateThreshold:I

.field private mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mDnsNumPings:I

.field private mDnsServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mEvaluationLevelStayed:I

.field private mFirstRequest:Z

.field private mGoodRxPacketsBase:I

.field private mGoodRxThreshold:I

.field private mHostAddress:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsFmcNetwork:Z

.field private mIsInDhcpSession:Z

.field private mIsMobileConnected:Z

.field private mIsMobileHipriConnected:Z

.field private mIsScanning:Z

.field private mIsScreenOn:Z

.field private mIsUsingProxy:Z

.field private mIsWaitingSwitchToHipri:Z

.field private mL2State:I

.field private mLastCheckTimeByRssi:J

.field private mLastQualityCheckTimeByActivity:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMaxAvoidCount:I

.field private mMinDnsResponses:I

.field private mMobilePolicyDataEnable:Z

.field private mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

.field private mNoRxPacketsLimit:I

.field private mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPassBytes:I

.field private mPassBytesVerifyingState:I

.field private mPauseStartTime:J

.field private mPoorNetworkAvoidanceEnabled:Z

.field private mPoorNetworkAvoidanceEnabledTime:J

.field private mPoorNetworkDetectionEnabled:Z

.field private mPoorRxPacketsLimit:I

.field private mPropertiesModelName:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mPublicDnsAvailable:Z

.field private mQCRepeat:I

.field private mQCRetry:I

.field private mQCSets:I

.field private mQCSocket:Ljava/net/Socket;

.field private mQCTimeoutMs:I

.field private mQcDumpVer:Ljava/lang/String;

.field mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

.field private mQcHistoryHead:I

.field private mQcHistoryTotal:I

.field private mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

.field private mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

.field private mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

.field mRawRssi:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedLinkStatusType:I

.field private mRssiFetchToken:I

.field private mRssiThreshold:I

.field private mSwitchFailCount:I

.field private mSwitchableCondition:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnidentifiedCount:I

.field mUrlList:[Ljava/lang/String;

.field private mUserAgentModelName:Ljava/lang/String;

.field private mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->lock:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    const-wide/16 v3, 0x1f4

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_MONITORING_SAMPLING_INTERVAL_MS:J

    const/16 v0, -0x50

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    sput v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT:I

    const/4 v0, 0x6

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    sput v7, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAL_LEAD_TIME:I

    const/4 v0, 0x6

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    sget v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    sget v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    add-int/2addr v0, v3

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RAW_RSSI_SIZE:I

    const-wide/high16 v3, 0x4020000000000000L

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    const-wide v3, 0x3fc999999999999aL

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    const/16 v0, 0x9

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EMA_ALPHA:I

    const-wide/high16 v3, 0x4010000000000000L

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

    const-wide/high16 v3, -0x3f97000000000000L

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    sput v2, Landroid/net/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    const-wide/high16 v3, 0x4000000000000000L

    sget-wide v5, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    long-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D

    const-string/jumbo v0, "www.google.com"

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DEFAULT_URL_STRING:Ljava/lang/String;

    new-array v0, v9, [Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const v4, 0x1b7740

    invoke-direct {v3, v1, v8, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v1

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v4, 0x5

    const v5, 0x493e0

    invoke-direct {v3, v8, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v4, 0x6

    const/16 v5, 0xa

    const v6, 0xea60

    invoke-direct {v3, v4, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v7

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v4, 0x9

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v8

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-array v0, v8, [Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v4, 0x1b7740

    const/16 v5, -0xc8

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v1

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v4, 0x493e0

    const/16 v5, -0x46

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v4, -0x37

    invoke-direct {v3, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v7

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->stayAwake:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "http://www.msn.com"

    aput-object v3, v0, v1

    const-string v3, "http://www.yahoo.com"

    aput-object v3, v0, v2

    const-string v3, "http://www.amazon.com"

    aput-object v3, v0, v7

    const-string v3, "http://www.youtube.com"

    aput-object v3, v0, v8

    const-string v3, "http://www.google.com"

    aput-object v3, v0, v9

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST1:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "http://www.qq.com"

    aput-object v3, v0, v1

    const-string v3, "http://www.taobao.com"

    aput-object v3, v0, v2

    const-string v3, "http://www.hao123.com"

    aput-object v3, v0, v7

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST2:[Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "http://www.naver.com"

    aput-object v3, v0, v1

    const-string v3, "http://www.daum.net"

    aput-object v3, v0, v2

    const-string v3, "http://www.nate.com"

    aput-object v3, v0, v7

    const-string v3, "http://www.google.com"

    aput-object v3, v0, v8

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST3:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "http://www.samsung.com"

    aput-object v3, v0, v1

    const-string v1, "http://d2uzsrnmmf6tds.cloudfront.net/50KB.txt"

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->TEST_LIST:[Ljava/lang/String;

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIgnorableApMASK:[I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x2ba8c0
        0xa14ac
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/4 v9, -0x1

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v6, "WifiWatchdogStateMachine"

    invoke-direct {p0, v6}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-boolean v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    const/4 v6, 0x2

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    iput v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    const/16 v6, -0x50

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    const/4 v6, 0x5

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    const/16 v6, 0x1cfc

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    const/16 v6, 0x56f4

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    const/4 v6, 0x2

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNoRxPacketsLimit:I

    const/16 v6, 0xf

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I

    const/16 v6, 0x1e

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I

    const/16 v6, 0x3e8

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    const/4 v6, 0x2

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    iput v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I

    const-string v6, "216.137.52.194"

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    iput-wide v12, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J

    iput-wide v12, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    new-instance v6, Landroid/util/LruCache;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/util/LruCache;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mEvaluationLevelStayed:I

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-boolean v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    iput v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    const-string v6, "1.0"

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcDumpVer:Ljava/lang/String;

    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    const/16 v6, 0x1e

    new-array v6, v6, [Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    iput-boolean v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    const/16 v6, 0xb

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    iput-boolean v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    iput-wide v12, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    iput-wide v12, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const-string v8, "WifiWatchdogStateMachine.DnsPinger"

    invoke-direct {v6, p0, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_0
    const/16 v6, 0x19

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->setLogRecSize(I)V

    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v6, "NetworkStatsThread"

    invoke-direct {v2, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    new-instance v4, Landroid/os/HandlerThread;

    const-string v6, "QualityResultHandlerThread_0"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, v10}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;I)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "QualitySocketHandlerThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v6, "CaptivePortalHandlerThread"

    invoke-direct {v0, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    const/4 v1, 0x0

    :goto_1
    const/16 v6, 0x1e

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    new-instance v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    return v0
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    return v0
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    return-object v0
.end method

.method static synthetic access$10302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I

    return p1
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    return v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    return v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    return-wide v0
.end method

.method static synthetic access$11402(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    return-wide p1
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return v0
.end method

.method static synthetic access$11502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return p1
.end method

.method static synthetic access$11508(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return v0
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    return-object v0
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    return v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    return p1
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500()D
    .locals 2

    sget-wide v0, Landroid/net/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D

    return-wide v0
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$13002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    return-object v0
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    return v0
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I

    return v0
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$13502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    return v0
.end method

.method static synthetic access$13702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    return p1
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13802(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    return v0
.end method

.method static synthetic access$13902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    return p1
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    return v0
.end method

.method static synthetic access$14002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    return p1
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    return v0
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14202(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$14602(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object v0
.end method

.method static synthetic access$15000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST3:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST1:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiWatchdogStateMachine;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15600()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DEFAULT_URL_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    return v0
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    return p1
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I

    return v0
.end method

.method static synthetic access$16200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNoRxPacketsLimit:I

    return v0
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I

    return v0
.end method

.method static synthetic access$16502(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J

    return-wide p1
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    return-wide v0
.end method

.method static synthetic access$16602(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    return-wide p1
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    return v0
.end method

.method static synthetic access$16702(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    return p1
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    return-object v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    return v0
.end method

.method static synthetic access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    return p1
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z

    move-result v0

    return v0
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->authenticationComplete()V

    return-void
.end method

.method static synthetic access$1802(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v0

    return v0
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setEvaluationParameters()V

    return-void
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    return v0
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    return-object v0
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    return v0
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20300()J
    .locals 2

    sget-wide v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$21300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21600(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$21700(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$21800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    return-void
.end method

.method static synthetic access$22000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22100()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    return v0
.end method

.method static synthetic access$22102(Z)Z
    .locals 0

    sput-boolean p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    return p0
.end method

.method static synthetic access$22200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    return-void
.end method

.method static synthetic access$23000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23800()J
    .locals 2

    sget-wide v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_MONITORING_SAMPLING_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$23900()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    return v0
.end method

.method static synthetic access$23902(I)I
    .locals 0

    sput p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    return p0
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    return-void
.end method

.method static synthetic access$24000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24100()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    return v0
.end method

.method static synthetic access$24200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$25000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    return v0
.end method

.method static synthetic access$25200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25300(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$25400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25500(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$25600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26800()[D
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic access$26802([D)[D
    .locals 0

    sput-object p0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic access$26900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$27000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2702(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$27100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27200()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method static synthetic access$27300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    return p1
.end method

.method static synthetic access$3102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I

    return p1
.end method

.method static synthetic access$3202(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I

    return p1
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$3302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic access$4902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setL2State(I)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$5302(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method

.method static synthetic access$5402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object p1
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$6202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return p1
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    return v0
.end method

.method static synthetic access$6302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    return p1
.end method

.method static synthetic access$6308(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    return v0
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxBad:I

    return v0
.end method

.method static synthetic access$6702(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxBad:I

    return p1
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxGood:I

    return v0
.end method

.method static synthetic access$6802(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxGood:I

    return p1
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    return v0
.end method

.method static synthetic access$7002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    return p1
.end method

.method static synthetic access$7008(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    return v0
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    return v0
.end method

.method static synthetic access$7302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    return p1
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    return v0
.end method

.method static synthetic access$7402(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    return p1
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    return v0
.end method

.method static synthetic access$7700()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    return v0
.end method

.method static synthetic access$7702(Z)Z
    .locals 0

    sput-boolean p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    return p0
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    return v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    return p1
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private authenticationComplete()V
    .locals 1

    const v0, 0x21047

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    return-void
.end method

.method private calculateSignalLevel(I)I
    .locals 3

    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private captivePortalCheckException()Z
    .locals 4

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "DCM"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\"docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"0000docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"0001docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const-string v1, "KDI"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\"au_Wi-Fi2\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"au_Wi-Fi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2_club\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2premium_club\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"UQ_Wi-Fi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2premium\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"wifi_square\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"[Wi2]\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"KDDIsetup\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "SBM"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\"0001softbank\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"0002softbank\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"mobilepoint\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"FON_FREE_INTERNET\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "\"gogoinflight\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Carnival-WiFi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"SFR WiFi FON\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"CelcomWifi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"O2 Wifi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "de.telekom.hotspotlogin"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->isPackageExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", no need to check whether or not it is a captive portal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 12

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_version"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/high16 v9, -0x10000

    and-int/2addr v9, v3

    ushr-int/lit8 v6, v9, 0x10

    const v9, 0xffff

    and-int v5, v3, v9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "ro.build.version.release"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_0

    shl-int/lit8 v9, v8, 0x4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v10

    add-int v8, v9, v10

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v8, :cond_3

    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Cannot retrieve version info from SystemProperties."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "WifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkVersion - Current version: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New version: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    shl-int/lit8 v11, v8, 0x10

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    :cond_5
    sparse-switch v6, :sswitch_data_0

    :cond_6
    :goto_2
    :sswitch_0
    shl-int/lit8 v9, v8, 0x10

    add-int/lit8 v9, v9, 0x1

    if-eq v3, v9, :cond_2

    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Version chaged. Updating the version..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_version"

    shl-int/lit8 v11, v8, 0x10

    add-int/lit8 v11, v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "checkVersion - failed."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_1
    if-eqz v2, :cond_6

    :try_start_1
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Resetting Watchdog related settings parameters..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_poor_connection_warning"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_internet_service_check_warning"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x422 -> :sswitch_0
    .end sparse-switch
.end method

.method private freeWifiScanStatusNotification(I)V
    .locals 5

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xdc

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeWifiScanStatusNotification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWifiInfo.ssid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.OPEN_AP_CHECK_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "wifiInfo"

    new-instance v3, Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "free_wifi_scan_open_network_status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private getL2State()I
    .locals 3

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getL2State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    return v0
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private initCurrentQcFailRecord()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-boolean v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-boolean v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    return-void
.end method

.method private isEnterpriseAP()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "It\'s not a eap AP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isIgnorableAP()Z
    .locals 8

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "The type of current AP is not suitable to check the quality!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return v5

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-string v6, "\"gogoinflight\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "\"Carnival-WiFi\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "\"orange\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "SNS/CaptivePortal not applicable AP."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIgnorableApMASK:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_6

    aget v3, v0, v1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    if-ne v6, v3, :cond_5

    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "The type of current AP is not suitable to check the quality!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    goto :goto_1
.end method

.method private isInEvaluationLevel()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    if-ge v3, v4, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInEvaluationLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi:%d, rate:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x1

    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v5, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKTCMWifiSettingScreen: top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.kt.wificm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private isSimCheck()Z
    .locals 2

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v3, :cond_1

    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->start()V

    invoke-static {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkVersion(Landroid/content/Context;)V

    return-object v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qualityCheckRequest(I)V
    .locals 4

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    if-le p1, v1, :cond_1

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "QC already requested as much as mQCSets!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v0

    if-lez v0, :cond_2

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The previous evaluation set - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] isn\'t finished!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-eq v1, v2, :cond_5

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "qualityCheckRequest is called during scan or DHCP session -> Cancel and reschedule the request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->restartQCCancelledByScanOrDhcp()V

    goto :goto_0

    :cond_5
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[qualityCheckRequest] id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    const v2, 0x21020

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$3;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$2;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private reportQCResult(II)V
    .locals 2

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportQCResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    const v0, 0x21023

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 3

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "########################################"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21016

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$26502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_1
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Good link notification is sent"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$26602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_4
    const-string v0, "Poor link notification is sent"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendLinkStatusNotification(ZI)V
    .locals 9

    const v8, 0x21016

    const v7, 0x21015

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "########################################"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    iput p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendLinkStatusNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v8, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$26502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_2
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Good link notification is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v7, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$26602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_7
    const-string v2, "Poor link notification is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v3, 0x2

    invoke-virtual {v2, v8, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$26502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_9
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Good link notification with POOR_LINK is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/4 v2, 0x3

    if-eq p2, v2, :cond_b

    const/4 v2, 0x4

    if-eq p2, v2, :cond_b

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3G"

    if-eq v2, v3, :cond_b

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4G"

    if-eq v2, v3, :cond_b

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown"

    if-ne v2, v3, :cond_e

    :cond_b
    iput-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    iput-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    :cond_c
    const v2, 0x21042

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v3, "enableHIPRI"

    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "[sendLinkStatusNotification] FEATURE_ENABLE_HIPRI"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_d
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    goto/16 :goto_0

    :cond_e
    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_f
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v7, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$26602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_10
    const-string v2, "Poor link notification is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setEvaluationParameters()V
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/.smartCM"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_3

    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_7

    :goto_0
    sput-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    sget-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    if-eqz v7, :cond_1

    const-string v7, "http://www.samsung.com"

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/net/wifi/WifiWatchdogStateMachine;->TEST_LIST:[Ljava/lang/String;

    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    :cond_1
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    const/4 v7, 0x5

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    const/4 v7, 0x7

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v6, :cond_2

    move v4, v6

    :cond_2
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    const/16 v6, 0x8

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    const/16 v6, 0x9

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    const/16 v6, 0xb

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    const/16 v6, 0xc

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    const/16 v6, 0xd

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sput-wide v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    const/16 v6, 0xe

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    const/16 v6, 0xf

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    const/16 v6, 0x10

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMARTCM_DBG : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDnsNumPings : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMinDnsResponses : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUrlString : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRssiThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dBm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataRateThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Mbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCRepeat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCSets : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCTimeoutMs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHostAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserAgentModelName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPassBytes : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGoodRxThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_EVAULATE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_1
    move-object v0, v1

    :cond_6
    :goto_2
    return-void

    :cond_7
    move v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :goto_3
    :try_start_3
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_8

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception name : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_9

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMARTCM_DBG : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDnsNumPings : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMinDnsResponses : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUrlString : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRssiThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dBm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataRateThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Mbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCRepeat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCSets : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCTimeoutMs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHostAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserAgentModelName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPassBytes : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGoodRxThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_EVAULATE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "Failed to close .smartCM file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    sget-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMARTCM_DBG : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDnsNumPings : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMinDnsResponses : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUrlString : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    aget-object v8, v10, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRssiThreshold : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dBm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDataRateThreshold : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Mbps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQCRepeat : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQCSets : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQCTimeoutMs : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHostAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUserAgentModelName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPassBytes : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGoodRxThreshold : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_EVAULATE_COUNT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v0, :cond_b

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_b
    :goto_5
    throw v6

    :catch_2
    move-exception v2

    sget-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v7, :cond_b

    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "Failed to close .smartCM file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v2

    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "Failed to close .smartCM file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto/16 :goto_4

    :catch_4
    move-exception v3

    move-object v0, v1

    goto/16 :goto_3
.end method

.method private setL2State(I)V
    .locals 3

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setL2State: orig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    return-void
.end method

.method private declared-synchronized setQcFailHistory()V
    .locals 10

    const/16 v9, 0x10

    const/4 v7, -0x1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    if-ne v5, v7, :cond_6

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    :goto_1
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->time:Ljava/util/Date;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    if-eq v5, v7, :cond_4

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    iput-boolean v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    iput-boolean v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    :cond_5
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const-string v1, ""

    const-string v2, ""

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd hh:mm:ss SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->time:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    rem-int/lit8 v5, v5, 0x1e

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** QC HISTORY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ****"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :try_start_3
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", [s]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", [t]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", [e]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-boolean v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-boolean v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v8

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_a

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v8

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    if-eqz v5, :cond_9

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dl] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_4
    const/4 v5, 0x1

    :try_start_4
    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->initCurrentQcFailRecord()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_a
    :try_start_5
    const-string v5, ""
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_4
.end method

.method private setupNetworkReceiver()V
    .locals 3

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$1;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private skipCaptivePortalCheck()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3

    const v2, 0x21007

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update current BSSID to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_5

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "null"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_7

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1
.end method

.method private updatePoorNetworkParameters()V
    .locals 11

    const/4 v10, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v4

    iput-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_5

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "mobile_data"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v4, :cond_7

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isSimCheck()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v4, :cond_8

    if-ne v2, v10, :cond_8

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    if-eqz v4, :cond_8

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    :cond_2
    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v4, :cond_9

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-nez v1, :cond_3

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    const-string v4, "WifiWatchdogStateMachine"

    const-string v7, "ANS turned on. Do not start scan for a while."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_3

    const-string v4, "WifiWatchdogStateMachine"

    const-string v7, "during connected state"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    :cond_3
    sget-boolean v4, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_4

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePoorNetworkAvoidance - Poor Network Test Enabled / !mIsFmcNetwork : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v4, :cond_b

    move v4, v5

    :goto_7
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " - mPoorNetworkAvoidanceEnabled:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v4, :cond_c

    const-string v4, "enabled"

    :goto_8
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePoorNetworkDetection - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / MobilePolicyDataDisabled / !mIsFmcNetwork : \n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "airplane_mode_on"

    invoke-static {v4, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_d

    move v4, v5

    :goto_9
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "mobile_data"

    invoke-static {v4, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    :goto_a
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v2, v10, :cond_f

    move v4, v5

    :goto_b
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v8, :cond_10

    :goto_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - mPoorNetworkDetectionEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v4, :cond_11

    const-string v4, "enabled"

    :goto_d
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v4, "WifiWatchdogStateMachine"

    const-string/jumbo v7, "updatePoorNetworkParameters - Exception while retrieving ConnectionManager"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    goto/16 :goto_1

    :cond_6
    move v4, v6

    goto/16 :goto_2

    :cond_7
    move v4, v6

    goto/16 :goto_3

    :cond_8
    move v4, v6

    goto/16 :goto_4

    :cond_9
    move v4, v6

    goto/16 :goto_5

    :cond_a
    move v4, v6

    goto/16 :goto_6

    :cond_b
    move v4, v6

    goto/16 :goto_7

    :cond_c
    const-string v4, "disabled"

    goto/16 :goto_8

    :cond_d
    move v4, v6

    goto/16 :goto_9

    :cond_e
    move v4, v6

    goto :goto_a

    :cond_f
    move v4, v6

    goto :goto_b

    :cond_10
    move v5, v6

    goto :goto_c

    :cond_11
    const-string v4, "disabled"

    goto :goto_d
.end method

.method private updateSettings()V
    .locals 5

    const v4, 0x21017

    const/4 v3, 0x0

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Updating secure settings"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v1, :cond_2

    const-string v1, "Disabling poor network avoidance for wi-fi only device"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    :cond_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setEvaluationParameters()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x21014

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkDnsQuery()V
    .locals 1

    const v0, 0x2100c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const-string v1, ""

    const-string v2, ""

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd hh:mm:ss SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiInfo: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLinkProperties: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentSignalLevel: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPoorNetworkAvoidanceEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mL2State: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQcHistoryTotal: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], mQcDumpVer: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcDumpVer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "info: l2"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "info: fd"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDnsServerList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v7, Landroid/net/wifi/WifiWatchdogStateMachine;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x1e

    if-ge v6, v8, :cond_1

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2
    const/16 v6, 0x1e

    if-ge v0, v6, :cond_5

    :try_start_1
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->time:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x0

    :goto_3
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    :try_start_2
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    rem-int/lit8 v3, v6, 0x1e
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]:  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", [s]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", [t]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", [e]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-boolean v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-boolean v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x10

    if-le v6, v9, :cond_4

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v6, v6, v8

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    if-eqz v6, :cond_3

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[dl] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v9, v9, v10

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v6, v3, 0x1

    rem-int/lit8 v3, v6, 0x1e

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_4
    const-string v6, ""
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_5
    :try_start_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :catch_0
    move-exception v6

    goto :goto_5
.end method

.method public fastDisconnectClear()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x3f97000000000000L

    sput-wide v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    return-void
.end method

.method public fastDisconnectEvaluate()Z
    .locals 20

    const/4 v1, 0x0

    const-wide/high16 v12, -0x8000000000000000L

    const-wide/high16 v10, -0x3f97000000000000L

    const-wide/high16 v8, -0x3f97000000000000L

    const-wide/high16 v2, -0x3f97000000000000L

    const-wide/high16 v4, -0x3f97000000000000L

    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_0

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "fastDisconnectEvaluate: Enter."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    sget v15, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RAW_RSSI_SIZE:I

    if-ge v14, v15, :cond_2

    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_1

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "Not enough data to evaluate FD."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_2
    const/4 v6, 0x0

    :goto_1
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    if-ge v6, v14, :cond_6

    const/4 v7, 0x0

    :goto_2
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    if-ge v7, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    add-int v15, v7, v1

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    add-double/2addr v12, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    int-to-double v14, v14

    div-double v2, v12, v14

    if-nez v6, :cond_5

    move-wide v8, v2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v12, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    add-int/lit8 v14, v14, -0x1

    if-ne v6, v14, :cond_4

    move-wide v10, v2

    goto :goto_3

    :cond_6
    sub-double v4, v10, v8

    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_7

    const-string v14, "WifiWatchdogStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fastDisconnectEvaluate: oldest="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", latest="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", diff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-double v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    const-wide/high16 v16, -0x3f97000000000000L

    cmpl-double v14, v14, v16

    if-nez v14, :cond_9

    sput-wide v4, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    :goto_4
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    cmpl-double v14, v4, v14

    if-lez v14, :cond_a

    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_8

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "A sharp fall! Disconnect!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_9
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    mul-double/2addr v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L

    sget-wide v18, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    sub-double v16, v16, v18

    sget-wide v18, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    mul-double v16, v16, v18

    add-double v14, v14, v16

    sput-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    goto :goto_4

    :cond_a
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    sget-wide v16, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_c

    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_b

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "A sharp fall trend! Disconnect!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public fastDisconnectUpdateRssi(I)V
    .locals 3

    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastDisconnectUpdateRssi: Enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RAW_RSSI_SIZE:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public getNetworkClass()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current network class is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method isUsingStaticIp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method requestWakeLock(Z)V
    .locals 4

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestWakeLock - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const-string v1, "acquire"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    const-string v1, "release"

    goto :goto_1

    :cond_3
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public scanStarted()V
    .locals 9

    const-wide/16 v7, 0x1388

    const v6, 0x21046

    const v5, 0x2103d

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    :cond_0
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "startScan is cancelled. NetworkInfo.State.CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2ee0

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScan is cancelled. ANS is turned on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds ago."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "startScan but already in scanning state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    invoke-virtual {p0, v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_6
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 3

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "setIsFmcNetwork - Exception while setting isFmcNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
