.class public Lcom/android/settings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private extra_type:I

.field private isAirplaneMode:Z

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisabledByEnablingHotspot:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private req_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "WifiApWarning"

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    :cond_1
    return-void
.end method

.method private disableWifiDialog()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiApWarning"

    const-string v2, "WiFi p2p is connected. Create dailog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private dismissProgressDialog(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "WifiApWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissProgressDialog, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 6

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v3, 0x1

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_0
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    if-ne p1, v5, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v1, v3, :cond_5

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_4
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    goto :goto_1
.end method

.method private isP2pConnected()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isP2PConnected() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "WifiApWarning"

    const-string v1, "isP2pConnected - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 2

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

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

.method private isSimCheck()Z
    .locals 2

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

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

.method private preProvisioning()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const-string v3, "READY"

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x19

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private secSetSoftapEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_WarningForUsingTethering"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    goto :goto_0
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setRvfMode(I)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    if-eqz p1, :cond_4

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const-string v0, "WifiApWarning"

    const-string v1, "provisioning sucess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v0, "airplane_mode_on"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    const-string v0, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSoftapEnabled(enable), isAirplaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_a

    if-eq v3, v7, :cond_7

    if-eq v3, v8, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    if-eq v3, v7, :cond_8

    if-ne v3, v8, :cond_9

    :cond_8
    const-string v0, "wifi_saved_state"

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v3, 0x258

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_2
    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_b

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    const-string v0, "WifiApWarning"

    const-string v2, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v0, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSoftapEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c

    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    if-eqz p1, :cond_3

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private showNextHotspotDialog(I)V
    .locals 23

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0904f5

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/high16 v18, 0x41900000

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v18, 0x1e

    const/16 v19, 0x1e

    const/16 v20, 0x1e

    const/16 v21, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v18, 0x40000000

    const/high16 v19, 0x3f800000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f0904e0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f09085a

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0904e9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090859

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f09049b

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_3
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f09049a

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090859

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f09049b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_4
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0904bb

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "$20.48"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090803

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f0904ba

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_5
    const-string v7, "file:///android_asset/html/%y/tethering_attention.html"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ja"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v10, "ja"

    :goto_2
    const-string v18, "%y"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    new-instance v8, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090859

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f09085a

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$19;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x1040014

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_2
    const-string v10, "en"

    goto :goto_2

    :pswitch_6
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0904de

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090859

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f09085a

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$22;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090776

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_7
    const-string v18, "WifiApWarning"

    const-string v19, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v18, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$23;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiApDialog;->show()V

    goto/16 :goto_1

    :pswitch_8
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f090471

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090859

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$24;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f09085a

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$26;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090472

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_9
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f090479

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f090859

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f09085a

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f0904db

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "WifiApWarning"

    const-string v2, "startActivityForResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "WifiApWarning"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const-string v0, "WifiApWarning"

    const-string v1, "WifiAp is disabled: provisioning fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x0

    const v10, 0x7f100038

    const/4 v9, 0x1

    const-string v6, "WifiApWarning"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "WifiApWarning"

    const-string v7, "Error: this activity may be started only with intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const-string v6, "req_type"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const-string v6, "extra_type"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    iget-object v5, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_0
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_NAI_MISMATCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_TETHERING_DENIED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090442

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v6, v9, :cond_4

    const v6, 0x7f090446

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v6, v9, :cond_3

    const v6, 0x7f09085a

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const v6, 0x7f090444

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_5
    const v6, 0x7f090445

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x103012b

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    :cond_6
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setVisible(Z)V

    move-object v1, p0

    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1040014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v9, :cond_8

    const v6, 0x7f090439

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_7
    :goto_2
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_8
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-ne v6, v12, :cond_9

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v9, :cond_9

    const v6, 0x7f09043f

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_9
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_a

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v12, :cond_a

    const v6, 0x7f09043c

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_a
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-ne v6, v12, :cond_b

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-nez v6, :cond_b

    const v6, 0x7f09043e

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_b
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    const v6, 0x7f090440

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0, v10}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    :cond_0
    const-string v0, "WifiApWarning"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "WifiApWarning"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    invoke-static {p0, v0, p0}, Lcom/android/settings/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_4

    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "WifiApWarning"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_show_passwd"

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
