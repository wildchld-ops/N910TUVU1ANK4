.class public Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static MAX_CLIENTS:I

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static backOffState:I

.field static currentMccMnc:Ljava/lang/String;

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I

.field private static final mTurnOffMobileAP:Z


# instance fields
.field mNotificationManager:Landroid/app/NotificationManager;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_TurnOffMobileAPSimRefresh"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTurnOffMobileAP:Z

    const-string v0, ""

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/16 v6, 0xd

    const/16 v5, 0xc

    const-string v0, "WifiApBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "extra_type"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "req_type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-ne p2, v4, :cond_1

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_2

    add-int v0, v1, v2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v1, v4, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x5

    if-ne p2, v4, :cond_4

    if-eq v3, v5, :cond_0

    if-eq v3, v6, :cond_0

    :cond_2
    :goto_1
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "req_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    if-eq v3, v5, :cond_5

    if-ne v3, v6, :cond_0

    :cond_5
    const-string v4, "WifiApBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "WifiApBroadcastReceiver"

    const-string v1, "startHotspotProvisioningRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2

    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f09046a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onReceive: action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "action is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v27, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    const-string v27, "wifi_state"

    const/16 v28, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v27, 0x0

    sput v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v27

    if-eqz v27, :cond_2

    sget-object v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v28, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v27, "hotspot"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, ""

    const-string v28, "vold.encrypt_progress"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    const-string v27, "phone"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    const-string v27, "ril.backoffstate"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xfb

    move/from16 v27, v0

    sput v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "WIFI_AP_STATE_DISABLED, backOffState = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "RemoteException occurs in setTransmitPower"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v27

    if-eqz v27, :cond_3

    sget-object v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v28, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "hotspot"

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    const-string v27, ""

    const-string v28, "vold.encrypt_progress"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string v27, "phone"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    const-string v27, "ril.backoffstate"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xfb

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x4

    sput v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "WIFI_AP_STATE_ENABLED, backOffState = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_5

    sget-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v27, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v27

    if-nez v27, :cond_5

    const-string v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v27

    const/16 v28, 0xd

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "RemoteException occurs in setTransmitPower"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto/16 :goto_0

    :cond_6
    const-string v27, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const-string v27, "wifiap_power_mode_alarm_option"

    const/16 v28, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    :try_start_2
    const-string v27, "wifi_ap_plugged_type"

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v20

    :goto_2
    if-nez v20, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v22

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ALARM_START : set "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v11, v27, v29

    new-instance v6, Landroid/content/Intent;

    const-string v27, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "wifiap_power_mode_alarm_option"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v27, 0x0

    const/high16 v28, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    const-string v27, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v11, v12, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :catch_2
    move-exception v10

    const/16 v20, 0x0

    goto :goto_2

    :cond_7
    sget-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v27, :cond_8

    new-instance v6, Landroid/content/Intent;

    const-string v27, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "wifiap_power_mode_alarm_option"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v27, 0x0

    const/high16 v28, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    const-string v27, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_8
    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_9
    const/16 v27, 0x4

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v27, :cond_0

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "ALARM_EXPIRE"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    const-string v27, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PowerManager;

    const/16 v27, 0x1

    const-string v28, "MobileAPCloseService"

    move-object/from16 v0, v21

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    :try_start_3
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    const-string v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v24

    const/16 v25, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v22

    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    const/16 v27, 0x3

    move/from16 v0, v27

    iput v0, v15, Landroid/os/Message;->what:I

    const/16 v16, 0x0

    :try_start_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v16

    :goto_4
    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "powermode_value = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_b

    const/16 v27, 0xd

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    if-eqz v22, :cond_b

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "--> ap disable"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :try_start_5
    const-string v27, "wifi_saved_state"

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    move-result v25

    :goto_5
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    const-wide/16 v27, 0x258

    :try_start_6
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v27, "wifi_saved_state"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    if-eqz v13, :cond_0

    :try_start_7
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v10

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :catch_5
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v10

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Cannot release wake lock ~~"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "ALARM_STOP"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v27, :cond_0

    sget-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v27, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v27, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "wifiap_power_mode_alarm_option"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v27, 0x0

    const/high16 v28, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    const-string v27, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_d
    const-string v27, "com.android.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    const-string v27, "wifiap_plug_state_changed_option"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_e

    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "Unplugged"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v24

    const/16 v27, 0xd

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v27, :cond_0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_e
    const-string v27, "WifiApBroadcastReceiver"

    const-string v28, "Plugged"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v27, :cond_0

    sget-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v27, :cond_0

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_f
    const-string v27, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    const-string v27, "NUM"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v4, :cond_10

    const/4 v4, 0x0

    :cond_10
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v27

    if-eqz v27, :cond_11

    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v27

    if-le v4, v0, :cond_13

    sget-object v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v28, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_7
    if-nez v4, :cond_14

    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-eqz v27, :cond_14

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    :cond_12
    :goto_8
    sput v4, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    :cond_13
    sget v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v27

    if-ge v4, v0, :cond_11

    sget-object v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v28, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_14
    if-lez v4, :cond_12

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_8

    :cond_15
    const-string v27, "com.android.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_16
    const-string v27, "android.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_17
    const-string v27, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string v27, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string v27, "android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string v27, "android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    const/16 v27, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_18
    const-string v27, "android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    const/16 v27, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_19
    sget-boolean v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTurnOffMobileAP:Z

    if-eqz v27, :cond_0

    const-string v27, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    const-string v27, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Recieve Sim State Changed : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "IMSI"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    const-string v27, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    const-string v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const-string v27, "WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "INTENT_VALUE_ICC_IMSI changed mccmnc old = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ,  new = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_7
    move-exception v27

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
