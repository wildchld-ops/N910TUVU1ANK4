.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$CocktailProvider;
    }
.end annotation


# static fields
.field static final ABNORMAL_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charging"

.field static final ACTION_BATTERY_LOW_COCKTAIL_BUTTON:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

.field static final ACTION_BATTERY_LOW_COCKTAIL_TOUCH:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

.field static final ACTION_CABLE_CONNECTED:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_CABLE_CONNECTED"

.field static final ACTION_CABLE_DISCONNECTED:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_CABLE_DISCONNECTED"

.field static final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "android.intent.action.CHECK_COOLDOWN_LEVEL"

.field static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field static final ACTION_COVER_REQUEST_REMOTEVIEWS:Ljava/lang/String; = "com.samsung.cover.REQUEST_REMOTEVIEWS"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_DUMP:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_DUMP"

.field static final ACTION_POWERSAVINGMODE_AUTO_ENABLE:Ljava/lang/String; = "android.settings.POWERSAVING_AUTO_ENABLE"

.field static final ACTION_SPEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field static final ACTION_START_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

.field static final ACTION_STOP_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

.field static final BATTERY_CHARGETYPE_SLOW:I = 0x2

.field static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field static final BATTERY_HEALTH_UNDER_VOLTAGE:I = 0x9

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field static final BATTERY_OVERHEAT_SHUTDOWN_WARNING:I = 0x2

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SWELLING_PERIOD:I = 0xea60

.field static final CHARGING_INTERRUPTION_PERIOD:I = 0xea60

.field static final DEBUG:Z = false

.field static final DEVICE_TYPE_PHONE:I = 0x1

.field static final DEVICE_TYPE_TABLET:I = 0x2

.field static final EXTRA_BATTERY_OVERHEAT_LEVEL:Ljava/lang/String; = "battery_overheat_level"

.field static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field static final EXTRA_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "check_cooldown_level"

.field static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field static final EXTRA_HIGHVOLTAGE_CHARGER:Ljava/lang/String; = "hv_charger"

.field static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field static final EXTRA_PENINSERT:Ljava/lang/String; = "penInsert"

.field static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "remote"

.field static final EXTRA_REMOTEVIEWS_TYPE:Ljava/lang/String; = "type"

.field static final EXTRA_REMOTEVIEWS_TYPE_BATTERY:Ljava/lang/String; = "battery"

.field static final EXTRA_REMOTEVIEWS_VISIBILITY:Ljava/lang/String; = "visibility"

.field static final FACE_DETECTION_FAILURE_DURATION:I = 0xbb8

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final HIGHVOLTAGE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "HighVoltageChargerNotice"

.field static final HIGHVOLTAGE_CHARGER_DURATION:I = 0xbb8

.field static final HIGHVOLTAGE_CHARGER_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_highvoltage_charger"

.field static final INCOMPATIBLE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowIncompatibleChargerWarning"

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final MAXIMUM_LOW_BATTERY_DUMP:I = 0x3

.field static final OVERHEAT_SHUTDOWN:Ljava/lang/String; = "OverheatShutdown"

.field static final OVERHEAT_SHUTDOWN_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_overheat_shutdown"

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final POWERSAVINGMODE_AUTO_THRESHOLD:I = 0x14

.field static final PRODUCT_DEV:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY:I = 0x9

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY_ESTIMATED_TIME:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING:I = 0x8

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_DELAY_TIME:I = 0xea60

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_ESTIMATED_TIME:I = 0x7530

.field static final SLOW_CHARGING_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowSlowChargingWarning"

.field static final SOC_SUDDEN_CHANGE_THRESHOLD:I = 0xa

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_BATTERY_SWELLING_WARNING:I = 0x4

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final VRPOPUP_BUNDLE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc.vrpopup_bundle"

.field static final VRPOPUP_INTENT:Ljava/lang/String; = "com.samsung.android.intent.action.VR_POPUP"

.field static final VRPOPUP_PKG:Ljava/lang/String; = "popup_activity"

.field static final VRPOPUP_STRING:Ljava/lang/String; = "popup_string"

.field static final VRPOPUP_TYPE:Ljava/lang/String; = "popup_type"

.field static final WIRELESS_CHARGING_DO_NOT_SHOW:Ljava/lang/String; = "WirelessChargingNotice"

.field static final WIRELESS_CHARGING_DURATION:I = 0xbb8

.field static final WIRELESS_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_wireless_charging"


# instance fields
.field mATT:Z

.field mAbnormalChargingDialog:Landroid/app/AlertDialog;

.field mAbnormalChargingNotification:Landroid/app/Notification;

.field mAbnormalChargingTextView:Landroid/widget/TextView;

.field mBatteryChargetype:I

.field mBatteryCurrentavg:I

.field mBatteryHealth:I

.field mBatteryHighVoltageCharger:Z

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryOnline:I

.field mBatteryOverheatLevel:I

.field mBatteryStatus:I

.field mBatterySwelling:Z

.field mBatterySwellingDialog:Landroid/app/AlertDialog;

.field mBatterySwellingLevel:I

.field mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingRecoveryCount:I

.field mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

.field mBatterySwellingRecoveryLevel:I

.field mBatterySwellingRecoveryTemperature:I

.field mBatterySwellingRecoveryThreshold:I

.field mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingTask:Ljava/lang/Runnable;

.field mBatterySwellingTemperature:I

.field mBatteryTemperature:I

.field mCable:Z

.field mChargerVibration:Z

.field mChargingInterruptionDialog:Landroid/app/AlertDialog;

.field mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionTask:Ljava/lang/Runnable;

.field mCocktailBar:Z

.field mCocktailLowBatteryWarning:Z

.field mCoverCamera:Z

.field mDeviceType:I

.field mDimKeeping:Z

.field mFTAMode:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field mHighVoltageChargerDialog:Landroid/app/AlertDialog;

.field mHighVoltageChargerNotification:Landroid/app/Notification;

.field mHighVoltageChargerTask:Ljava/lang/Runnable;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field mPlugType:I

.field mPowersavingmodeDialog:Landroid/app/AlertDialog;

.field mSIOPLevel:I

.field mSPen:Z

.field mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mScoverOpen:Z

.field private mScoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mScreenOffTime:J

.field mThemeContext:Landroid/content/Context;

.field mVZW:Z

.field mWirelessChargingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    const/16 v0, 0x2b2

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    const/16 v0, 0x45

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCable:Z

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCocktailLowBatteryWarning:Z

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mScoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$13;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$19;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$20;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$25;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$26;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelAbnormalChargingNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method cancelFaceDetectionFailureNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f0b01c5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method cancelFullBatteryNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method cancelHighVoltageChargerNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method dismissAbnormalChargingWarning()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissBatterySwellingRecoveryNotice()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissBatterySwellingWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method dismissChargingInterruptionWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissHighVoltageChargerNotice()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissOverheatShutdownNotice()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissOverheatShutdownWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissPowersavingmodeNotice()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissWirelessChargingNotice()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method isAvailablePowerSaving()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kids_home_mode"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "LGT"

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "lock"

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "missing_phone_lock"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    return v5

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :goto_3
    move v5, v4

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3
.end method

.method notifyAbnormalChargingNotification(I)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0b01a9

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    const-string v5, "PowerUI"

    const-string v6, "notifyAbnormalChargingNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-ne v7, p1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b01a6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-ne v7, p1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f0200e1

    iput v6, v5, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, -0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b01a2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b01a5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f020344

    iput v6, v5, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    goto :goto_2
.end method

.method notifyFaceDetectionFailureNotification()V
    .locals 10

    const v9, 0x7f0b01c5

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    const-string v5, "PowerUI"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    const-string v5, "PowerUI"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b018b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f02021e

    iput v6, v5, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v9, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method notifyFullBatteryNotification()V
    .locals 12

    const/4 v11, 0x0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedHideNotificationMessages()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_1

    const-string v8, "PowerUI"

    const-string v9, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b018b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b018c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v8, :cond_2

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v9, 0x7f0200fd

    iput v9, v8, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v6, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v8, v11, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7, v6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    if-nez v5, :cond_3

    const-string v8, "PowerUI"

    const-string v9, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const v8, 0x10000006

    const-string v9, "PowerUI"

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v8, 0x4e20

    invoke-virtual {v0, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0
.end method

.method notifyHighVoltageChargerNotification()V
    .locals 7

    const v6, 0x7f0b01c4

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v3, "PowerUI"

    const-string v4, "notifyHighVoltageChargerNotification : fail to get NotificationManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-nez v3, :cond_1

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const v4, 0x7f0200d9

    iput v4, v3, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040015

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method playSound(I)V
    .locals 13

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    if-eq v9, v1, :cond_1

    const/4 v9, 0x3

    if-eq v9, v1, :cond_1

    const-string v9, "PowerUI"

    const-string v10, "recording so doesn\'t play sound"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :cond_1
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v9, :cond_2

    const-string v9, "PowerUI"

    const-string v10, "playSound : NotificationPlayer is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/systemui/media/NotificationPlayer;

    const-string v10, "PowerUI"

    invoke-direct {v9, v10}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v9, :cond_2

    const-string v9, "PowerUI"

    const-string v10, "playSound : fail to new NotificationPlayer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    :goto_1
    const/4 v9, 0x2

    if-ne v9, v5, :cond_3

    const/4 v9, 0x1

    if-ne v9, p1, :cond_3

    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    if-eqz v9, :cond_3

    const/4 v5, 0x1

    const-string v9, "PowerUI"

    const-string v10, "ring mode but vibrates in Note3"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "alertoncall_mode"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    const/4 v4, 0x1

    :goto_2
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    if-eqz v8, :cond_5

    :try_start_0
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x4

    if-eq v9, v1, :cond_4

    const/4 v9, 0x3

    if-ne v9, v1, :cond_5

    :cond_4
    if-eqz v4, :cond_8

    const-string v9, "PowerUI"

    const-string v10, "calling so vibrate"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    :cond_5
    :goto_3
    const/4 v9, 0x2

    if-ne v9, v5, :cond_9

    packed-switch p1, :pswitch_data_0

    :try_start_1
    const-string v9, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_4
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v9, v10, v6, v11, v12}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    const-string v9, "PowerUI"

    const-string v10, "RINGER_MODE_NORMAL"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x2

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    :try_start_2
    const-string v9, "PowerUI"

    const-string v10, "calling and doesn\'t notify during calls"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_0
    :try_start_3
    const-string v9, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4

    :pswitch_1
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "low_battery_sound"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4

    :pswitch_2
    const-string v9, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4

    :pswitch_3
    const-string v9, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4

    :cond_9
    const/4 v9, 0x1

    if-ne v9, v5, :cond_b

    packed-switch p1, :pswitch_data_1

    const/16 v3, 0xb

    :goto_5
    new-instance v7, Landroid/os/SystemVibrator;

    invoke-direct {v7}, Landroid/os/SystemVibrator;-><init>()V

    if-eqz v7, :cond_a

    invoke-virtual {v7, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    :goto_6
    const-string v9, "PowerUI"

    const-string v10, "RINGER_MODE_VIBRATE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const/16 v3, 0xa

    goto :goto_5

    :pswitch_5
    const/16 v3, 0xb

    goto :goto_5

    :cond_a
    const-string v9, "PowerUI"

    const-string v10, "playSound : fail to new SystemVibrator"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    if-nez v5, :cond_c

    const-string v9, "PowerUI"

    const-string v10, "RINGER_MODE_SILENT"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v9, "PowerUI"

    const-string v10, "unknown RINGER_MODE"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method sendLowBatteryIntentToHMT(Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.VR_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "popup_type"

    const-string v2, "LOWBATT_POPUP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "popup_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method showAbnormalChargingWarning(I)V
    .locals 12

    const v11, 0x7f0b01a7

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "SHOULD_SHUT_DOWN"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v4, v8

    :goto_0
    if-eqz v4, :cond_1

    const-string v7, "PowerUI"

    const-string v8, "don\'t show Abnormal charging warning while Shutdown is ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v9, :cond_2

    const-string v7, "PowerUI"

    const-string v8, "FTA Mode is ON so don\'t show Abnormal charging warning"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v9, "PowerUI"

    const-string v10, "showAbnormalChargingWarning()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "com.android.systemui.power_abnormal_charging"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    if-ne v11, p1, :cond_4

    const-string v9, "DoNotShowSlowChargingWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/4 v7, 0x4

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/16 v7, 0xa

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show while Dock connects"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v9, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "PowerUI"

    const-string v8, "Incompatible charger warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-ne v11, p1, :cond_7

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b01a6

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v7, v9, :cond_6

    const p1, 0x7f0b01a8

    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b01a2

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const/high16 v9, 0x7f040000

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f08000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, p1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v8, p0, v6, v0, v3}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v7, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method showBatterySwellingRecoveryNotice()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingRecoveryNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b0199

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b019a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/power/PowerUI$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$14;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showBatterySwellingWarning()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_2

    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingWarning()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b0197

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b0198

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/power/PowerUI$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method showChargingInterruptionWarning()V
    .locals 8

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "PowerUI"

    const-string v6, "showChargingInterruptionWarning()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v2, v5, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    const-string v4, "PowerUI"

    const-string v5, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v5, :cond_2

    const v3, 0x7f0b0188

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x7

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_3

    const v3, 0x7f0b0189

    goto :goto_2

    :cond_3
    const/4 v5, 0x6

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_4

    const v3, 0x7f0b0187

    goto :goto_2

    :cond_4
    const/16 v5, 0x8

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_5

    const v3, 0x7f0b018a

    goto :goto_2

    :cond_5
    const-string v4, "PowerUI"

    const-string v5, "status is NotCharging but health is wrong value"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0186

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_3
.end method

.method showHighVoltageChargerNotice()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SHOULD_SHUT_DOWN"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v5, v7, :cond_1

    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    const-string v5, "PowerUI"

    const-string v6, "don\'t show High Voltage Charger notice while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v7, :cond_3

    const-string v5, "PowerUI"

    const-string v6, "FTA Mode is ON so don\'t show High Voltage Charger notice"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v7, "PowerUI"

    const-string v8, "showHighVoltageChargerNotice()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "com.android.systemui.power_highvoltage_charger"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v5, "HighVoltageChargerNotice"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->notifyHighVoltageChargerNotification()V

    const-string v5, "PowerUI"

    const-string v6, "High Voltage Charger notice doesn\'t show again"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const v7, 0x7f040014

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0b01c1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/power/PowerUI$23;

    invoke-direct {v6, p0, v4, v2}, Lcom/android/systemui/power/PowerUI$23;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/power/PowerUI$24;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$24;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHighVoltageChargerDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method showInvalidChargerDialog()V
    .locals 4

    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b0021

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method showLowBatteryWarning()V
    .locals 19

    const-string v16, "PowerUI"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v15, :cond_1

    const-string v15, "showing"

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " low battery warning: level="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " ["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "SHOULD_SHUT_DOWN"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_3

    const-string v15, "PowerUI"

    const-string v16, "Shutdown is ON"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v15, "updating"

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v15, :cond_4

    const/4 v15, -0x2

    if-eq v15, v3, :cond_4

    const-string v15, "PowerUI"

    const-string v16, "FTA Mode is ON and Not critical Low battery"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    if-eqz v15, :cond_5

    const-string v15, "PowerUI"

    const-string v16, "cover camera is running so don\'t show Low battery warning"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 v15, -0x2

    if-ne v15, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0b018e

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    const-string v15, "sys.hmt.connected"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "PowerUI"

    const-string v16, "HMT is connected, so send intent instead of building dialog"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/power/PowerUI;->sendLowBatteryIntentToHMT(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0b018d

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    const-string v15, "PowerUI"

    const-string v16, "show Low battery gadget"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/power/PowerUI;->updateCocktailLowBatteryWarning(Z)V

    :cond_9
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0b0190

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_5
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v16, "power"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    if-nez v12, :cond_e

    const-string v15, "PowerUI"

    const-string v16, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0b018f

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_b
    const v6, 0x7f020002

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedHideNotificationMessages()I

    move-result v15

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const v16, 0x7f040004

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f080015

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f080016

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v15, 0x104000a

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0194

    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.settings.POWER_SAVING_SETTINGS"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x58800000

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI;->isAvailablePowerSaving()Z

    move-result v15

    if-eqz v15, :cond_d

    new-instance v15, Lcom/android/systemui/power/PowerUI$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v2, v4, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_d
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    new-instance v15, Lcom/android/systemui/power/PowerUI$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v5, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d9

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    :cond_e
    const v15, 0x10000006

    const-string v16, "PowerUI"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    const-wide/16 v15, 0x3a98

    move-wide v0, v15

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_2
.end method

.method showOverheatShutdownNotice()V
    .locals 8

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    const-string v5, "PowerUI"

    const-string v6, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_2

    const-string v5, "PowerUI"

    const-string v6, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v6, "PowerUI"

    const-string v7, "showOverheatShutdownNotice()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/power/PowerUI$21;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$21;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/power/PowerUI$22;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$22;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01ba

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method showOverheatShutdownWarning()V
    .locals 8

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    const-string v5, "PowerUI"

    const-string v6, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    const-string v6, "PowerUI"

    const-string v7, "showOverheatShutdownWarning()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissOverheatShutdownNotice()V

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01ae

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v6, :cond_2

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/android/systemui/power/PowerUI$17;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$17;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v5, Lcom/android/systemui/power/PowerUI$18;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$18;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01af

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method showPowersavingmodeNotice()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "PowerUI"

    const-string v5, "don\'t show Power saving mode notice while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_2

    const-string v4, "PowerUI"

    const-string v5, "FTA Mode is ON so don\'t show Power saving mode notice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v5, "PowerUI"

    const-string v6, "showPowersavingmodeNotice()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0182

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0181

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.settings.PSM_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/power/PowerUI$15;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/power/PowerUI$15;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/power/PowerUI$16;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$16;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showWirelessChargingNotice()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "SHOULD_SHUT_DOWN"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v6, v8, :cond_0

    move v2, v6

    :goto_0
    if-eqz v2, :cond_1

    const-string v6, "PowerUI"

    const-string v7, "don\'t show wireless charging popup while Shutdown is ON"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v2, v7

    goto :goto_0

    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v8, :cond_2

    const-string v6, "PowerUI"

    const-string v7, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v8, "PowerUI"

    const-string v9, "showWirelessChargingNotice()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v9, "com.android.systemui.power_wireless_charging"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "WirelessChargingNotice"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "PowerUI"

    const-string v7, "Wireless charging notice notice doesn\'t show again"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0b01a1

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const v8, 0x7f040041

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f08015f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0b019b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "GATE"

    const-string v7, "<GATE-M> WIRELESS_CHRG_POPUP:x,y</GATE-M>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto/16 :goto_1

    :cond_5
    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0b019e

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0b019d

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public start()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v8

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v7

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-nez v3, :cond_4

    const-string v4, "PowerUI"

    const-string v5, "start : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    :goto_2
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x103012b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const-string v4, "PowerUI"

    const-string v5, "White theme"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.spen_usp"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : S Pen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.cocktailbar"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : CocktailBar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    :goto_3
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : VZW customer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ATT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    :goto_4
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : ATT customer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hlte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ha3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-eq v9, v4, :cond_8

    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    :goto_5
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : Dim keeping = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x46

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    const/16 v4, 0x45

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v4, :cond_9

    const/16 v4, 0x258

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    const/16 v4, 0x24e

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    :goto_6
    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string v5, "PowerUI"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mScoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    goto/16 :goto_0

    :cond_4
    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    const v4, 0x3000000a

    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    :cond_5
    iput v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_2

    :cond_6
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    goto/16 :goto_3

    :cond_7
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    goto/16 :goto_4

    :cond_8
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    goto/16 :goto_5

    :cond_9
    const/16 v4, 0x2bc

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    const/16 v4, 0x2b2

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    goto/16 :goto_6
.end method

.method turnOnScreen()V
    .locals 5

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateCocktailLowBatteryWarning(Z)V
    .locals 11

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v6, "PowerUI"

    const-string v7, "update Low battery gadget"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mCocktailLowBatteryWarning:Z

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "com.android.systemui.power.PowerUI$CocktailProvider"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    if-eqz p1, :cond_a

    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0020

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x12

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_2

    const/4 v6, 0x3

    :goto_0
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/TypefaceSpan;

    const-string v6, "Roboto_Medium"

    invoke-direct {v7, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_3

    const/4 v6, 0x3

    :goto_1
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f040006

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v6, 0x7f080019

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f08001a

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v6

    const/4 v8, -0x2

    if-ne v6, v8, :cond_4

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0b018e

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f080017

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v6

    const/4 v9, -0x2

    if-ne v6, v9, :cond_5

    const-string v6, "#791a10"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_3
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v7, 0x7f08001b

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v6

    const/4 v9, -0x2

    if-ne v6, v9, :cond_6

    const-string v6, "#bc311b"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_4
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v6, 0x7f08001b

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v6, :cond_8

    const v7, 0x7f080018

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v8, 0xa

    if-gt v6, v8, :cond_7

    const v6, 0x7f0201fd

    :goto_5
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_6
    new-instance v6, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v6, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/widget/RemoteViews;)V

    const v7, 0x10004

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v3

    const/4 v2, 0x0

    :goto_7
    array-length v6, v0

    if-ge v2, v6, :cond_0

    aget v6, v0, v2

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    aget v6, v0, v2

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2
    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0b018d

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_5
    const-string v6, "#04222d"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_6
    const-string v6, "#1d424f"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    :cond_7
    const v6, 0x7f0201fb

    goto :goto_5

    :cond_8
    const v7, 0x7f080018

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v6

    const/4 v8, -0x2

    if-ne v6, v8, :cond_9

    const v6, 0x7f0201fc

    :goto_8
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_6

    :cond_9
    const v6, 0x7f0201fa

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_9
    array-length v6, v0

    if-ge v2, v6, :cond_0

    aget v6, v0, v2

    const v7, 0x10004

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method updateCoverLowBatteryWarning(Z)V
    .locals 4

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040005

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
