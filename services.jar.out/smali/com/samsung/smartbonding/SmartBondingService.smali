.class public final Lcom/samsung/smartbonding/SmartBondingService;
.super Lcom/samsung/smartbonding/ISmartBondingService$Stub;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    }
.end annotation


# static fields
.field public static final CAUSE_AIRPLANE_MODE:I = 0xe

.field public static final CAUSE_BLOCKED_PROCESS:I = 0x10

.field public static final CAUSE_CONNECTION_FAILURE:I = 0x3

.field public static final CAUSE_DOWNLOAD_CANCEL:I = 0x1

.field public static final CAUSE_LTE_ABNORMAL_PERFORMANCE:I = -0x3

.field public static final CAUSE_MOBILE_OR_WIFI_OFF:I = 0xb

.field public static final CAUSE_NO_ERROR:I = 0x0

.field public static final CAUSE_NO_LTE:I = 0x11

.field public static final CAUSE_NO_PERMISSION:I = 0x12

.field public static final CAUSE_NO_SIM:I = 0xc

.field public static final CAUSE_ROAMING:I = 0xd

.field public static final CAUSE_SERVER_NOT_SUPPORTED:I = 0x2

.field public static final CAUSE_SETTING_OFF:I = 0xa

.field public static final CAUSE_SMALL_CONTENT_SIZE:I = 0xf

.field public static final CAUSE_USE_ONLY_LTE_INTERFACE:I = -0x2

.field public static final CAUSE_USE_ONLY_WIFI_INTERFACE:I = -0x1

.field public static final CAUSE_WIFI_ABNORMAL_PERFORMANCE:I = -0x4

.field private static CscFeatureConfigSmartBonding:Ljava/lang/String; = null

.field private static DBG:Z = false

.field private static final EVENT_BOOT_COMPLETED:I = 0xc

.field private static final EVENT_CREATE_LOG_FOLDER:I = 0x6

.field private static final EVENT_CREATE_TRAFFIC_TOAST:I = 0xd

.field private static final EVENT_ENABLE_SB:I = 0x1

.field private static final EVENT_ENABLE_SB_INTERFACES:I = 0x2

.field private static final EVENT_GET_HOST_ADDRESS:I = 0x9

.field private static final EVENT_HIDE_TRAFFIC_TOAST:I = 0xe

.field private static final EVENT_MOBILE_CONNECTION_RENEW:I = 0x3

.field private static final EVENT_MOBILE_CONNECTION_TURN_OFF_WITH_DELAYED:I = 0xb

.field private static final EVENT_POLL_CURRENT_ACTIVITY:I = 0xa

.field private static final EVENT_SHOW_TOAST_MESSAGE:I = 0x4

.field private static final EVENT_UPDATE_NETWORK_ENABLED:I = 0x8

.field private static final EVENT_UPDATE_SB_STATE:I = 0x7

.field private static final EVENT_UPDATE_TRAFFIC_NOTIFICATION:I = 0x5

.field private static final INT_TOTAL:Ljava/lang/Integer;

.field private static IsDCM:Z = false

.field private static IsKOR:Z = false

.field public static final NOTIFICATION_THRESHOLD_SPEED:I = 0x2710

.field private static final SB_BOTH:I = 0x2

.field public static final SB_BOTH_CONNECTED:I = 0x3

.field public static final SB_BOTH_DISCONNECTED:I = 0x0

.field private static final SB_EXT_STATE_BLOCKED:I = 0x5

.field private static final SB_EXT_STATE_DISABLED:I = 0x0

.field private static final SB_EXT_STATE_DOWNLOADING:I = 0x4

.field private static final SB_EXT_STATE_DOWNLOAD_FINISHED:I = 0x3

.field private static final SB_EXT_STATE_DOWNLOAD_STARTED:I = 0x2

.field private static final SB_EXT_STATE_ENABLED:I = 0x1

.field public static final SB_INTENT_HIDE_DIALOG:Ljava/lang/String; = "android.intent.action.SB_HIDE_DIALOG"

.field public static final SB_INTENT_SHOW_DIALOG:Ljava/lang/String; = "android.intent.action.SB_SHOW_DIALOG"

.field public static final SB_INTENT_START:Ljava/lang/String; = "android.intent.action.START_NETWORK_BOOSTER"

.field public static final SB_INTENT_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SB_STATE_CHANGED"

.field public static final SB_INTENT_STOP:Ljava/lang/String; = "android.intent.action.STOP_NETWORK_BOOSTER"

.field private static final SB_INTENT_VZW_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.RI_Aggregation_state_changed"

.field public static final SB_INVALID:I = -0x1

.field private static final SB_IPV4_TYPE:I = 0x0

.field private static final SB_IPV6_TYPE:I = 0x1

.field private static final SB_MOBILE:I = 0x1

.field public static final SB_RADIO_CONNECTED:I = 0x2

.field private static final SB_STATE_ENABLE:I = 0x2

.field private static final SB_STATE_IDLE:I = 0x1

.field private static final SB_STATE_NONE:I = 0x0

.field private static final SB_STATE_WORKING:I = 0x3

.field public static final SB_USAGE_CANCEL:I = 0x3

.field public static final SB_USAGE_NO:I = 0x2

.field public static final SB_USAGE_NONE:I = 0x0

.field public static final SB_USAGE_NOT_SUPPORTED:I = 0x4

.field public static final SB_USAGE_YES:I = 0x1

.field private static final SB_WIFI:I = 0x0

.field public static final SB_WIFI_CONNECTED:I = 0x1

.field static final SHIP_BUILD:Z

.field public static final SMARTBONDING_SERVICE:Ljava/lang/String; = "sb_service"

.field private static final TAG:Ljava/lang/String; = "SmartBondingService"

.field private static TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String; = null

.field private static final TIME_MOBILE_CONNECTION_RENEW:I = 0x9c40

.field private static final TIME_MOBILE_CONNECTION_TURN_OFF_DELAY:I = 0xbb8

.field private static final TIME_POLL_CURRENT_ACTIVITY:I = 0x2710

.field private static final TIME_TRAFFIC_UPDATE:I = 0x3e8

.field public static final TOAST_ACTIVATE_SB:I = 0x6

.field public static final TOAST_DOWNLOAD_MOBILE_ONLY:I = 0xc

.field public static final TOAST_DOWNLOAD_WIFI_ONLY:I = 0xb

.field public static final TOAST_MOBILE_SLOW:I = 0xa

.field public static final TOAST_OVERHEAT_MOBILE_DOWNLOAD:I = 0x5

.field public static final TOAST_OVERHEAT_WIFI_DOWNLOAD:I = 0x4

.field public static final TOAST_SERVER_ERROR_MOBILE_DOWNLOAD:I = 0x3

.field public static final TOAST_SERVER_ERROR_WIFI_DOWNLOAD:I = 0x2

.field public static final TOAST_START_SB:I = 0x1

.field public static final TOAST_TURN_ON_MOBILE:I = 0x8

.field public static final TOAST_TURN_ON_WIFI:I = 0x7

.field public static final TOAST_WARNING_LTE:I = 0xd

.field public static final TOAST_WARNING_WIFI:I = 0xe

.field public static final TOAST_WIFI_SLOW:I = 0x9

.field private static final UID_MEDIA:I = 0x3f5

.field private static VDBG:Z


# instance fields
.field private final DEBUG_LEVEL_FILE:Ljava/lang/String;

.field private final DEBUG_LEVEL_FILE2:Ljava/lang/String;

.field private final MAX_SPEED_OF_DECIMAL_PART:D

.field private final MAX_TOAST_COUNT:I

.field private final MAX_TRAFFIC_SPEED:[I

.field private final MAX_TRAFFIC_SPEED_CHECK_POINT:[I

.field private isDecimalPart:Z

.field private isKioskContainer:Z

.field private mBlockedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBmBar:Landroid/graphics/Bitmap;

.field private mBmBarBg:Landroid/graphics/Bitmap;

.field private mCm:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurBoosterDecimalPartSpeed:D

.field private mCurBoosterSpeed:I

.field private mCurMaxSpeed:I

.field private mCurMobileBytes:J

.field private mCurMobileDecimalPartSpeed:D

.field private mCurMobileSpeed:I

.field private mCurTrafficTime:J

.field private mCurWifiBytes:J

.field private mCurWifiDecimalPartSpeed:D

.field private mCurWifiSpeed:I

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mCurrentWifiBSSID:Ljava/lang/String;

.field private mDisableBySIOP:Z

.field private mFasterInterface:I

.field private mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

.field private mHttpLogEnabled:Z

.field private mIsConnectMobileCalled:Z

.field private mIsNoneSettingMode:Z

.field private mIsStoppedByGooglePlay:Z

.field private mLastErrorCause:I

.field private mMobileBarBitmap:Landroid/graphics/Bitmap;

.field private mMobileConnected:Z

.field private mMobileLp:Landroid/net/LinkProperties;

.field private mNeedShowTrafficToast:Z

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkEnabled:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreMobileBytes:J

.field private mPreSBSetting:Z

.field private mPreTrafficTime:J

.field private mPreWifiBytes:J

.field private mPrevMaxSpeed:I

.field private mSBDataStatistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[J>;"
        }
    .end annotation
.end field

.field private mSBInterfacesEnabled:Z

.field private mSBNotification:Landroid/app/Notification;

.field private mSBState:I

.field private mSBToast:Landroid/widget/Toast;

.field private mSBUrlStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSBUsageStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

.field private mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

.field private mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

.field private mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

.field private mSpeedRatio:D

.field private mStartTrafficMonitor:Z

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mToastClickListener:Landroid/view/View$OnClickListener;

.field private mToastLayout:Landroid/view/LayoutInflater;

.field private mTrafficCount:I

.field private mWhiteListPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiBarBitmap:Landroid/graphics/Bitmap;

.field private mWifiConnected:Z

.field private mWifiLp:Landroid/net/LinkProperties;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    const/16 v0, -0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    const-string v0, "CscFeature_RIL_ConfigSmartBonding"

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sget-object v1, Lcom/samsung/smartbonding/SmartBondingService;->TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String;

    const-string v2, "NA"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    const-string v0, "DCM"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->IsKOR:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    const/4 v8, 0x6

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;-><init>()V

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsStoppedByGooglePlay:Z

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mLastErrorCause:I

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    iput-wide v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    iput-wide v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    iput-wide v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    iput-wide v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    iput-wide v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    iput-wide v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevMaxSpeed:I

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    new-array v0, v8, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED:[I

    iput-wide v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiDecimalPartSpeed:D

    iput-wide v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileDecimalPartSpeed:D

    iput-wide v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterDecimalPartSpeed:D

    const-wide/high16 v0, 0x4024000000000000L

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_SPEED_OF_DECIMAL_PART:D

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    iput v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TOAST_COUNT:I

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    const-string v0, "/sys/devices/virtual/misc/level/control"

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->DEBUG_LEVEL_FILE:Ljava/lang/String;

    const-string v0, "/mnt/.lfs/debug_level.inf"

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->DEBUG_LEVEL_FILE2:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    new-instance v0, Lcom/samsung/smartbonding/SmartBondingService$1;

    invoke-direct {v0, p0}, Lcom/samsung/smartbonding/SmartBondingService$1;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/smartbonding/SmartBondingService$2;

    invoke-direct {v0, p0}, Lcom/samsung/smartbonding/SmartBondingService$2;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void

    :array_0
    .array-data 4
        0x96
        0x64
        0x32
        0xf
        0x5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xc8
        0x96
        0x64
        0x32
        0xf
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Landroid/os/INetworkManagementService;)V
    .locals 12

    const/4 v11, 0x6

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;-><init>()V

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    const-wide/high16 v3, 0x3ff0000000000000L

    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsStoppedByGooglePlay:Z

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mLastErrorCause:I

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevMaxSpeed:I

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    new-array v3, v11, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED:[I

    iput-wide v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiDecimalPartSpeed:D

    iput-wide v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileDecimalPartSpeed:D

    iput-wide v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterDecimalPartSpeed:D

    const-wide/high16 v3, 0x4024000000000000L

    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_SPEED_OF_DECIMAL_PART:D

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    iput v11, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TOAST_COUNT:I

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    const-string v3, "/sys/devices/virtual/misc/level/control"

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->DEBUG_LEVEL_FILE:Ljava/lang/String;

    const-string v3, "/mnt/.lfs/debug_level.inf"

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->DEBUG_LEVEL_FILE2:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$1;

    invoke-direct {v3, p0}, Lcom/samsung/smartbonding/SmartBondingService$1;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$2;

    invoke-direct {v3, p0}, Lcom/samsung/smartbonding/SmartBondingService$2;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartBondingService starting up"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "SmartBondingService"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x103012b

    :goto_0
    invoke-direct {v4, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    iput-object p3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    const/4 v5, 0x4

    new-array v5, v5, [J

    fill-array-data v5, :array_2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initBlockedPackages()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;->register(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;->register(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;->register(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->register(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedRatio()V

    const-string/jumbo v3, "sb_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "sb_service"

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->loadPreference()V

    const-string/jumbo v3, "true"

    const-string v4, "isKioskModeEnabled"

    invoke-static {p1, v4}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "isKioskModeEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    if-eqz v3, :cond_3

    sput-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    :cond_3
    const-string v3, "SmartBondingService: start done"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    return-void

    :cond_4
    const v3, 0x1030128

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x96
        0x64
        0x32
        0xf
        0x5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xc8
        0x96
        0x64
        0x32
        0xf
        0x5
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/smartbonding/SmartBondingService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/smartbonding/SmartBondingService;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBVzwStateChangedIntent(IJJ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSiopToastCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkRemovedProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkTrafficMonitorCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->startTrafficMonitor()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStartIntent()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkEnableToastCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarToast()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->hideTrafficMonitorToast()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTrafficMonitor()V

    return-void
.end method

.method static synthetic access$3602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/samsung/smartbonding/SmartBondingService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$4202(Lcom/samsung/smartbonding/SmartBondingService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    return p1
.end method

.method static synthetic access$4400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/samsung/smartbonding/SmartBondingService;I)Landroid/net/LinkProperties;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedRatio()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I

    move-result v0

    return v0
.end method

.method private buildCheckSBUsageIntent(JLjava/lang/String;J)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SB_SHOW_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "threadID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fileSize"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private buildStopSBUsageIntent(J)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SB_HIDE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "threadID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private checkDecimalPart()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileDecimalPartSpeed:D

    iget-wide v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiDecimalPartSpeed:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    goto :goto_0
.end method

.method private checkEnableToastCondition()Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-boolean v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "checkStartToastCondition : mStartWithPopup is exist"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    :cond_2
    return v1

    :cond_3
    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkRemovedProcess()Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isRunningProcess(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.google.android.youtube"

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isRunningProcess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "checkRemovedProcess : youtube process is running so that don\'t need to remove list"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRemovedProcess : process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped. add it in remove usage list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "checkRemovedProcess : some process are remvoed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return v2

    :cond_7
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "checkRemovedProcess : no process is remvoed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkSBEnableCondition()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSBWorkingCondition()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSiopToastCondition()Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkTrafficMonitorCondition()Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sb.hide.trafficmonitor"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private clearNotification()V
    .locals 3

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "clearNotification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    :cond_1
    return-void
.end method

.method private clearSpeedBarRes()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private clearToast()V
    .locals 1

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "clearToast"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    return-void
.end method

.method private convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getGooglePlayContentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getGooglePlayContentUrlWithParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private convertSBInterfaceState(ZZ)I
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isPermissionAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceAccessPermission : allowed process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "SmartBondingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 7

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/net/InetAddress;

    :try_start_0
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllByName : start to get IP for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_0
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish to get IP for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_5

    const/4 v1, 0x0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_5

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllByName : dst address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllByName : UnknownHostException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    array-length v3, v2

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method private getApplicationName(ILjava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const-string v2, ""

    iget-object v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "com.android.vending"

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :try_start_0
    const-string v9, "com.android.vending"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : calling application name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2
    return-object v2

    :catch_0
    move-exception v3

    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "com.google.android.youtube"

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :try_start_1
    const-string v9, "com.google.android.youtube"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_0

    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_0

    :try_start_2
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_5
    const-string v2, ""

    goto/16 :goto_0
.end method

.method private getBarBitmap(II)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    :goto_0
    if-eqz v6, :cond_0

    if-nez v7, :cond_3

    :cond_0
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "getBarBitmap : bitmap or drawable is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_2
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-double v2, v2

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    int-to-double v10, v4

    div-double/2addr v2, v10

    double-to-int v9, v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-direct {v8, v12, v12, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v3, v12, v12, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method private getCurrentActivity()Ljava/lang/String;
    .locals 7

    const-string v2, ""

    :try_start_0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentActivityName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    if-nez v2, :cond_1

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception to get activity name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGooglePlayContentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\\?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v5

    if-eqz v3, :cond_2

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    aget-object v3, v2, v5

    const-string v4, "/o"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v5

    const-string v4, "/p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    aget-object v3, v2, v5

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    :cond_1
    :goto_0
    aget-object v3, v2, v5

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    aget-object v3, v2, v5

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aget-object v0, v2, v5

    :cond_2
    return-object v0

    :cond_3
    aget-object v3, v2, v5

    const-string v4, "/apk_gz"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v5

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_0
.end method

.method private getGooglePlayContentUrlWithParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getGooglePlayContentUrlWithParam : google play store contents"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    aget-object v2, v1, v3

    if-eqz v2, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    aget-object v0, v1, v3

    :cond_1
    return-object v0
.end method

.method private getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLinkProperties "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_3

    const-string v6, "WIFI"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_5

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    :cond_1
    if-nez v4, :cond_4

    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "getLinkProperties : wifi is not connected"

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v6, v1

    :goto_2
    return-object v6

    :cond_3
    const-string v6, "MOBILE"

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-ne p1, v8, :cond_2

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :cond_6
    if-nez v2, :cond_7

    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "getLinkProperties : mobile is not connected"

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private getLocalAddress(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalInetAddress(Landroid/net/LinkProperties;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalInetAddress(Landroid/net/LinkProperties;I)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLocalInetAddress(Landroid/net/LinkProperties;)Ljava/net/InetAddress;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "getLocalAddress : link properties is null"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private getLocalInetAddress(Landroid/net/LinkProperties;I)Ljava/net/InetAddress;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "getLocalAddress : link properties is null"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    if-nez p2, :cond_5

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v0

    :cond_3
    :goto_1
    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v2, v0

    goto :goto_2

    :cond_5
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v3, v2

    goto/16 :goto_0
.end method

.method private getMobileBytes()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getMobileBytes : exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getMobileDataEnabled()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getMobileDataEnabled : remote exception"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMobilePolicyDataEnable()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->isMobilePolicyDataEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobilePolicyDataEnable : result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    return v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "isMobilePolicyDataEnable : remote exception"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNetworkEnabled()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z

    move-result v0

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkEnabled : wifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mobile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 8

    const-string v2, ""

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_0

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v2, v6, v7

    :cond_1
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageName : package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 8

    const-string v3, ""

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_0

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_0

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_1
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProcessName : process name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "getProcessName : unable to get process name by activity manager"

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getProcessNameByProc(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    return-object v3
.end method

.method private getProcessNameByProc(I)Ljava/lang/String;
    .locals 8

    const-string v3, ""

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/comm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v0, v1

    :cond_2
    :goto_1
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessNameProc : process name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    return-object v3

    :catch_0
    move-exception v2

    :goto_2
    :try_start_3
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception to get process name by proc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception to close buffer reader : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_4
    throw v5

    :catch_2
    move-exception v2

    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception to close buffer reader : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v2

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception to close buffer reader : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v0, v1

    goto/16 :goto_2
.end method

.method private getSBInterfaceDirect(II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSBLimitFileSize()J
    .locals 2

    const-wide/32 v0, 0x1e00000

    return-wide v0
.end method

.method private getSBUsageEnabled()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_2

    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getWifiBytes()J
    .locals 9

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v5

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    sub-long v1, v5, v7

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "getWifiBytes : exception"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    move-wide v1, v3

    goto :goto_0
.end method

.method private hideTrafficMonitorToast()V
    .locals 2

    const/4 v1, 0x6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initBlockedPackages()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "NA"

    sget-object v6, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBlockedPackages: Read Package Form Feature= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const-string v5, "+"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add White List Form Feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "-"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add Block List Form Feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "initBlockedPackages: add DCM WhiteList Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.store"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.schedulememo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.dhome"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "initBlockedPackages: add Black List packages"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "org.zwanoo.android.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string/jumbo v6, "pl.speedtest.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.kbudev.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string/jumbo v6, "ru.qip.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "eu.vspeed.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speedtestmaster"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speed"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.krnet.LteTracker"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.sensorly.viewer"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v5, :cond_9

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "initBlockedPackages: add DCM Black List Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.threelm.dm.app.docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.mcafee.android.scanservice"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.rsupport.rsperm.ntt"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.co.omronsoft.android.decoemojimanager_docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.ne.docomo.smt.contents_search_widget"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.id_credit_sp.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.felicanetworks.mfs.addon.uicc.d"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.nextbit.app"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.co.nttdocomo.mailtranslationwifi"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.android.dialer"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.dcm_gate.premierclub"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.felicanetworks.mfs.addon.uicc.d"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.mcafee.android.scanservice"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.communicase.carriermail"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.mmb.android.mmbsv.process"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.osaifu.tsmproxy"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.shoplat"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.rsupport.rsperm.ntt"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.threelm.dm.app.docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.co.ntt_q.q_book.docomo.catalog"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.co.omronsoft.android.decoemojimanager_docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.id_credit_sp.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.ne.docomo.smt.contents_search_widget"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsKOR:Z

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "initBlockedPackages: add KOR Black List Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_a
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.uplus.onphone"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method private initSpeedBarRes()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080746

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080745

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private initSpeedRatio()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    return-void
.end method

.method private initTrafficMonitor()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-wide v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    iput-wide v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    iput-wide v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    iput-wide v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    iput-wide v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    iput-wide v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevMaxSpeed:I

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    return-void
.end method

.method private isAirPlaneMode()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isBlockedProcess(I)Z
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v4, :cond_7

    const-string v4, "com.nttdocomo.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "jp.co.nttdocomo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is Unblocked Docomo App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is blocked list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is Blocked Docomo App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is included in white list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is not included in white list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_b
    return v3
.end method

.method private isFirstCombinedRequest(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayFirstContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    iget-object v3, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isGooglePlayContent(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/market/GetBinary/GetBinary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGooglePlayFirstContent(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    aget-object v2, v0, v1

    const-string v3, "/market/GetBinary/GetBinary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    const-string v3, "/o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "isGooglePlayFirstContent : it\'s first content"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "isGooglePlayFirstContent : it\'s not a first content"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isLightTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isMidHighDebugLevel()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "ro.debug_level"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0x494d"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0x4948"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v5, "0x4f4c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/misc/level/control"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v5, "/mnt/.lfs/debug_level.inf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "/sys/devices/virtual/misc/level/control"

    invoke-direct {p0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0xB0B0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "0xC0C0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "/mnt/.lfs/debug_level.inf"

    invoke-direct {p0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "DMID"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "DHIG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method private isPermissionAllowed(II)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mediaserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3f5

    if-ne p2, v1, :cond_3

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPermissionAllowed is TRUE for processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPermissionAllowed is FALSE for processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRunningProcess(I)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private isRunningProcess(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private isYouTubeContent(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/videoplayback?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPreference()V
    .locals 2

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load Preference :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "persist.sys.sb.log.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SmartBondingService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SmartBondingService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v3, ""

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v0, v1

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    return-object v3

    :catch_0
    move-exception v2

    :goto_2
    :try_start_3
    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_4
    throw v4

    :catch_2
    move-exception v2

    const-string v5, "SmartBondingService"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v2

    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private removeSBUsage(J)V
    .locals 8

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    iget-object v3, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeSBUsage : url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is founded. add it in remove usage list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-object v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeSBUsage : thread id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added in remove list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeSBUsage : thread id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method private sendSBStartIntent()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSBStopIntent()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSBVzwStateChangedIntent(IJJ)V
    .locals 4

    const-string v1, "VZW"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RI_Aggregation_state_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "totalUsage"

    add-long v2, p2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "wifiUsage"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "mobileUsage"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify SB Status change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 3

    iput p6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mLastErrorCause:I

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SB_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    if-nez v1, :cond_2

    const-string v1, "appname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "wifiUsage"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "mobileUsage"

    invoke-virtual {v0, v1, p9, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send state changed intent : status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurMaxSpeed(I)V
    .locals 2

    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevMaxSpeed:I

    if-ge p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    :cond_1
    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    iput v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevMaxSpeed:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "setMobileDataEnabled : remote exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSBInterfacesEnabled(Z)I
    .locals 4

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    if-ne v1, p1, :cond_2

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to setSBInterfacesEnabled : already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v1

    :goto_1
    return v1

    :cond_1
    const-string v1, "disabled"

    goto :goto_0

    :cond_2
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSBInterfacesEnabled ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v1

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsStoppedByGooglePlay:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "setSBInterfacesEnabled : because it\'s google play contents. it tries to disconnect with delay"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsStoppedByGooglePlay:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private setSpeedTextOfBar()V
    .locals 12

    const v11, 0x102037b

    const v10, 0x1020379

    const v9, 0x1020378

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10407fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.1f "

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileDecimalPartSpeed:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.1f "

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiDecimalPartSpeed:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.1f "

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterDecimalPartSpeed:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10407fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showSpeedBarNotification(Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showSpeedBarNotification"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    if-nez v8, :cond_2

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showSpeedBarNotification : notification manager is null"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showSpeedBarNotification : notification already exist"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x1090082

    invoke-direct {v6, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v0, 0x102037a

    const-string/jumbo v3, "setImageBitmap"

    invoke-direct {p0, v1, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    const v0, 0x102037c

    const-string/jumbo v3, "setImageBitmap"

    invoke-direct {p0, v1, v5}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10407fe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const v0, 0x102037b

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020379

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020378

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.smartbonding"

    const-string v3, "com.android.settings.smartbonding.SmartBondingSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    :cond_4
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const v1, 0x1080906

    iput v1, v0, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v1, 0x108

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1
.end method

.method private showSpeedBarToast()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "empty toast"

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    :cond_0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    const v6, 0x10900e0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x102037b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x1020379

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1020378

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.1f "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.1f "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.1f "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showWarningToast(I)V
    .locals 6

    const/16 v5, 0x258

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumWidth(I)V

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private startTrafficMonitor()V
    .locals 4

    const/4 v2, 0x6

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startTrafficMonitor"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initTrafficMonitor()V

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getWifiBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarNotification(Z)V

    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopTrafficMonitor()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initTrafficMonitor()V

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearNotification()V

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearToast()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private turnOffMobileConnection()Z
    .locals 4

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "turnOffMobileConnection"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableHIPRI"

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "turnOffMobileConnection : Call stopUsingNetworkFeature for Hipri Types "

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception turnOffMobileConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private turnOnMobileConnection()Z
    .locals 8

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "turnOnMobileConnection"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableHIPRI"

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v6, v7}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v2

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "turnOnMobileConnection : Call startUsingNetworkFeature for Hipri Types "

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    return v3

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception turnOnMobileConnection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const-wide/32 v5, 0x9c40

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSpeedBarNotification()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "updateSpeedNotification : notification manager is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "updateSpeedNotification : no notification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->setCurMaxSpeed(I)V

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->setSpeedTextOfBar()V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102037a

    const-string/jumbo v3, "setImageBitmap"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102037c

    const-string/jumbo v3, "setImageBitmap"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v2, 0x108

    iput v2, v1, Landroid/app/Notification;->twQuickPanelEvent:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    goto :goto_1
.end method

.method private updateSpeedBarToast()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "updateSpeedBarToast : toast is null"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "updateSpeedBarToast : toast view is null"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    const v5, 0x102037b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x1020379

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1020378

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->isDecimalPart:Z

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.1f "

    new-array v7, v11, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileDecimalPartSpeed:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.1f "

    new-array v7, v11, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiDecimalPartSpeed:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.1f "

    new-array v7, v11, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterDecimalPartSpeed:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateStatisticsData(Ljava/lang/Integer;[J[J)V
    .locals 12

    :try_start_0
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateStatisticsData for pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", WiFi len="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", LTE len="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", WiFi time="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", LTE time="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget-wide v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_1

    array-length v6, v0

    const/4 v8, 0x4

    if-ge v6, v8, :cond_2

    :cond_1
    const/4 v6, 0x4

    new-array v0, v6, [J

    fill-array-data v0, :array_0

    :cond_2
    const/4 v6, 0x0

    aget-wide v8, v0, v6

    const/4 v10, 0x0

    aget-wide v10, p2, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    const/4 v6, 0x1

    aget-wide v8, v0, v6

    const/4 v10, 0x1

    aget-wide v10, p2, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    const/4 v6, 0x2

    aget-wide v8, v0, v6

    const/4 v10, 0x0

    aget-wide v10, p3, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    const/4 v6, 0x3

    aget-wide v8, v0, v6

    const/4 v10, 0x1

    aget-wide v10, p3, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-virtual {p1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    aget-wide v8, p3, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_3

    const/4 v6, 0x1

    aget-wide v8, p3, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_3

    const/4 v6, 0x1

    aget-wide v8, p2, v6

    long-to-double v8, v8

    const/4 v6, 0x1

    aget-wide v10, p3, v6

    long-to-double v10, v10

    div-double v2, v8, v10

    const/4 v6, 0x0

    aget-wide v8, p2, v6

    long-to-double v8, v8

    const/4 v6, 0x0

    aget-wide v10, p3, v6

    long-to-double v10, v10

    div-double v4, v8, v10

    cmpl-double v6, v4, v2

    if-ltz v6, :cond_5

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    div-double v8, v4, v2

    iput-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    :cond_3
    :goto_0
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now faster interface is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " speed ratio is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    monitor-exit v7

    :goto_1
    return-void

    :cond_5
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    div-double v8, v2, v4

    iput-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private updateTraffic()V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileBytes()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getWifiBytes()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    sub-long v3, v13, v15

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    sub-long v1, v13, v15

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    sub-long v5, v13, v15

    sget-boolean v13, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateTraffic : difftime ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") mobilebytes ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") wifibytes ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v1

    long-to-double v13, v13

    long-to-double v15, v3

    div-double v7, v13, v15

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v5

    long-to-double v13, v13

    long-to-double v15, v3

    div-double v11, v13, v15

    add-double v9, v7, v11

    const-wide/high16 v13, 0x4020000000000000L

    mul-double/2addr v13, v7

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    const-wide/high16 v13, 0x4020000000000000L

    mul-double/2addr v13, v11

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    const-wide/high16 v13, 0x4020000000000000L

    mul-double/2addr v13, v7

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileDecimalPartSpeed:D

    const-wide/high16 v13, 0x4020000000000000L

    mul-double/2addr v13, v11

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiDecimalPartSpeed:D

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileDecimalPartSpeed:D

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiDecimalPartSpeed:D

    add-double/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterDecimalPartSpeed:D

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkDecimalPart()V

    return-void
.end method

.method private updateTrafficMonitor()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTraffic()V

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedBarNotification()V

    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedBarToast()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAllSmartBondingData()[J
    .locals 1

    sget-object v0, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSmartBondingData(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getHttpLogEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    return v0
.end method

.method public getProxyInfo(I)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->enforceAccessPermission()V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    if-eqz v2, :cond_3

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxyInfo : type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    const-string v2, "WIFI"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] + proxt addr ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    :cond_2
    const-string v2, "MOBILE"

    goto :goto_1

    :cond_3
    new-array v1, v7, [Ljava/lang/String;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    goto :goto_2
.end method

.method public getSBEnabled()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "unable to get Smart Bonding enabled : disabled for sub users"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getSBInterface(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->enforceAccessPermission()V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getSBInterface : startUsingNetworkFeature is not called so it can\'t get mobile lp"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSBInterfaceEx(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->enforceAccessPermission()V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getSBInterfaceEx : startUsingNetworkFeature is not called so it can\'t get mobile lp"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSBInterfaceState()I
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_1

    const-string v5, "getSBInterfaceState : mobile is not connected because startUsingNetworkFeature is not called"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :cond_3
    :goto_1
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSBInterfaceState : mobile ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] wifi  ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->convertSBInterfaceState(ZZ)I

    move-result v5

    return v5

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception getSBInterfaceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception getSBInterfaceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSBInterfaces()[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->enforceAccessPermission()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-array v1, v7, [Ljava/lang/String;

    aput-object v8, v1, v5

    aput-object v8, v1, v6

    goto :goto_0
.end method

.method public getSBInterfacesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    return v0
.end method

.method public getSBNotificationEnabled()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding_notification"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSBNotificationEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    :goto_1
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_1
.end method

.method public getSBShowToastEnabled()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding_notification_do_not_show_speed"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSBShowToastEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    :goto_1
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_1
.end method

.method public getSBUsageStatus(J)I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-wide v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getSmartBondingData(I)[J
    .locals 7

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    int-to-long v3, v3

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    const-wide/high16 v5, 0x4059000000000000L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-long v3, v3

    aput-wide v3, v0, v2

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    aput-wide v3, v0, v2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :array_0
    .array-data 8
        -0x1
        0x1
    .end array-data
.end method

.method public getWarningToastEnabled()Z
    .locals 3

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getWarningToastEnabled called :"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "persist.sys.sb.warning.show"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public reportSBUsage(J[J)V
    .locals 19

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportSBUsage : sb usauge is reported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    monitor-enter p0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    move-object/from16 v18, v17

    goto :goto_0

    :cond_2
    if-eqz v18, :cond_5

    move-object/from16 v15, p3

    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatistics:[J

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->getAllLinkedStatistics()[J

    move-result-object v15

    goto :goto_1

    :cond_4
    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/smartbonding/SmartBondingService;->mLastErrorCause:I

    const/4 v2, 0x0

    aget-wide v9, p3, v2

    const/4 v2, 0x2

    aget-wide v11, p3, v2

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v3, 0x3

    const/4 v2, 0x0

    aget-wide v4, p3, v2

    const/4 v2, 0x2

    aget-wide v6, p3, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBVzwStateChangedIntent(IJJ)V

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public requestGetAllByName(JLjava/lang/String;)V
    .locals 6

    const/16 v5, 0x9

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    iput-object p3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public responseGetAllByName(J)[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    iget-object v0, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    new-array v3, v8, [Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v7, v3, v10

    aput-object v7, v3, v11

    const/4 v5, 0x3

    aput-object v7, v3, v5

    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v1, v5, :cond_3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v7, v3, v10

    aput-object v7, v3, v11

    const/4 v5, 0x3

    aput-object v7, v3, v5

    :cond_3
    return-object v3
.end method

.method public setHttpLogEnabled(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHttpLogEnabled called :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    const-string/jumbo v0, "persist.sys.sb.log.enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSBEnabled(Z)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_2

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart Bonding already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "disabled"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_bonding"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setSBInternalUsageStatus(IJ)V
    .locals 6

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSBInternalUsageStatus : status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    iput p1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "setSBInternalUsageStatus : send SB interfaces intent"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setSBNotificationEnabled(Z)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_2

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart Bonding Notification already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "disabled"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_bonding_notification"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setSBUsageStatus(IJ)V
    .locals 17

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSBUsageStatus : status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, v16

    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    invoke-direct/range {v2 .. v12}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBVzwStateChangedIntent(IJJ)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    iget-object v2, v15, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "setSBUsageStatus : same url is found"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    move/from16 v0, p1

    iput v0, v15, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "setSBUsageStatus : send SB interfaces enable event"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setWarningToast(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWarningToast called :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "persist.sys.sb.warning.show"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSBUsage(JJJLjava/lang/String;)Z
    .locals 28

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "startSBUsage : is airplane mode"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    const/16 v9, 0xe

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "startSBUsage : no sim"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    const/16 v9, 0xc

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "startSBUsage : roaming status"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    const/16 v9, 0xd

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobilePolicyDataEnable()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "startSBUsage : some interface is not enabled"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    const/16 v9, 0xb

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "startSBUsage is called"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "startSBUsage : smart bonding is not enabled"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    const/16 v9, 0xa

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_b
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "startSBUsage : check permission"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->isPermissionAllowed(II)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    const/16 v9, 0x12

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSBUsage : no permission for this process : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getProcessName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with this UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_d
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isBlockedProcess(I)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSBUsage : pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is blocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    const/16 v9, 0x10

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_11
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    move-object/from16 v0, v27

    iget-wide v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_11

    move-object/from16 v0, v27

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    if-nez v4, :cond_11

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_12

    const-string/jumbo v4, "startSBUsage: sb usauge is already started"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_12
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v4, p0

    move/from16 v5, v24

    move/from16 v6, v25

    invoke-direct/range {v3 .. v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;-><init>(Lcom/samsung/smartbonding/SmartBondingService;IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    move-object/from16 v10, p0

    move/from16 v11, v24

    move/from16 v12, v25

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    move-object/from16 v17, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v9 .. v19}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;-><init>(Lcom/samsung/smartbonding/SmartBondingService;IIJJLjava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_14
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_15

    const-string/jumbo v4, "startSBUsage : same url is founded"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, v26

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_17

    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-eqz v4, :cond_17

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_16

    const-string/jumbo v4, "startSBUsage : current url is not supported"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x5

    const/16 v16, 0x2

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v14, p7

    invoke-direct/range {v10 .. v20}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_17
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_18
    move-object/from16 v0, v26

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_19

    const-string/jumbo v4, "startSBUsage : url is already selected as no"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, v26

    iput-object v8, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, v26

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1b

    const-string/jumbo v4, "startSBUsage : url is already selected as yes"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBUsageStatus(IJ)V

    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_0

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBLimitFileSize()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-gez v4, :cond_1e

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSBUsage : smart bonding is not enabled because file size : limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBLimitFileSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fileSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x5

    const/16 v16, 0xf

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v14, p7

    invoke-direct/range {v10 .. v20}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_21

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v23

    :goto_1
    const/4 v4, 0x3

    move/from16 v0, v23

    if-eq v0, v4, :cond_21

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1f

    const-string/jumbo v4, "startSBUsage : network class is not 4G so that smart bonding won\'t work"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x5

    const/16 v16, 0x11

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v14, p7

    invoke-direct/range {v10 .. v20}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v23

    goto :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_22
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_23

    const-string/jumbo v4, "startSBUsage : url is updated"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_24
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_25
    move-object/from16 v0, v26

    iput-object v8, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    :cond_26
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/16 v22, 0x1

    goto :goto_2

    :cond_27
    if-nez v22, :cond_29

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_28

    const-string/jumbo v4, "startSBUsage : add url status in list"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_28
    iget-object v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBShowToastEnabled()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v4

    if-nez v4, :cond_2b

    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_2a

    const-string/jumbo v4, "startSBUsage : getSBNotificationEnabled() is false, no pop-up displayed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBUsageStatus(IJ)V

    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_0

    :cond_2b
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2c

    const-string/jumbo v4, "startSBUsage : sb usauge is started, send broadcast : set a flag"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_2c
    const/4 v4, 0x1

    iput-boolean v4, v9, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v13, p7

    move-wide/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Lcom/samsung/smartbonding/SmartBondingService;->buildCheckSBUsageIntent(JLjava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public stopSBUsage(J)I
    .locals 10

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopSBUsage : sb usauge is stopped : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInternalUsageStatus(IJ)V

    const-string v2, ""

    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    iget-wide v5, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "\\?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "stopSBUsage : spilt done"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v5, 0x0

    aget-object v5, v4, v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/market/GetBinary/GetBinary"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopSBUsage : it\'s google play contents (url[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_4
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/o"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "stopSBUsage : it\'s first contents"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->buildStopSBUsageIntent(J)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    monitor-exit p0

    return v9

    :cond_7
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_8
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "stopSBUsage : it\'s second contents"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_9
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    iget-object v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_b

    const-string/jumbo v5, "stopSBUsage : same url is found. set it as none status"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_b
    const/4 v5, 0x0

    iput v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public stopSBUsageWithReason(JI)I
    .locals 20

    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopSBUsageWithReason : reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    if-nez p3, :cond_3

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "stopSBUsageWithReason : download completed"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    if-gez p3, :cond_a

    move-object/from16 v0, v19

    iget v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v9, p3

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    :try_start_1
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "stopSBUsageWithReason : download is cancelled"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "stopSBUsageWithReason : 1:4 algorithm is happened / use only wifi for downloading"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, -0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "stopSBUsageWithReason : 1:4 algorithm is happened / use only lte for downloading"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->isMidHighDebugLevel()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    const-string/jumbo v3, "persist.sys.sb.warning.show"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, -0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    const/4 v3, -0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported errorno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, v19

    iget v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/samsung/smartbonding/SmartBondingService;->getApplicationName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v9, p3

    invoke-direct/range {v3 .. v13}, Lcom/samsung/smartbonding/SmartBondingService;->sendStateChangedIntent(JLjava/lang/String;Ljava/lang/String;IIJJ)V

    goto/16 :goto_1

    :cond_b
    if-gez p3, :cond_c

    const/4 v3, 0x0

    monitor-exit p0

    :goto_2
    return v3

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopSBUsageWithReason : sb usauge is stopped : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mIsStoppedByGooglePlay:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopSBUsageWithReason : stop with delay for waiting next contents : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mIsStoppedByGooglePlay:Z

    :cond_f
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInternalUsageStatus(IJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    if-eqz p3, :cond_14

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_11
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_12

    const-string/jumbo v3, "stopSBUsageWithReason : canceled so that list is cleared"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_13
    invoke-direct/range {p0 .. p2}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_15
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "stopSBUsageWithReason : download is cancelled. set it as none status"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const-string v3, ""

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    goto :goto_4

    :cond_17
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_18
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_19

    const-string/jumbo v3, "stopSBUsageWithReason : download is not supported. set it as not support status"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_19
    const/4 v3, 0x4

    move-object/from16 v0, v18

    iput v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p2}, Lcom/samsung/smartbonding/SmartBondingService;->buildStopSBUsageIntent(J)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public submitMultiSocketData([J[J)V
    .locals 4

    const/4 v2, 0x1

    :try_start_0
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "submitMultiSocketData called"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v1, p1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive command to switch dns but its not working in this version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->getCallingPid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->updateStatisticsData(Ljava/lang/Integer;[J[J)V

    sget-object v1, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->updateStatisticsData(Ljava/lang/Integer;[J[J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
