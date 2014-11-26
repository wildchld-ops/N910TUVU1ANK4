.class public Lcom/android/settings/wifi/FreeWifiScanSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FreeWifiScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;,
        Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;
    }
.end annotation


# static fields
.field private static rssi:I

.field private static timeout:I


# instance fields
.field private SUPPLICANT_CONF_BKP_PATH:Ljava/lang/String;

.field private SUPPLICANT_CONF_PATH:Ljava/lang/String;

.field private accessPointsToConnect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/FreeWifiScanAccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private apIndex:I

.field private isInDialog:Z

.field private mAutoConnect:I

.field private mBlockScan:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectOnlyOnce:Z

.field private mConnectableAps:Lcom/android/settings/ProgressCategory;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mContext:Landroid/content/Context;

.field private mDefaultAnsSettings:I

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

.field private mLastScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLastWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mNoAps:Landroid/preference/PreferenceGroup;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/FreeWifiScanAccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mScanPressed:Z

.field private mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

.field private final mScanner:Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;

.field private mSsidForConnect:Ljava/lang/String;

.field private mSummaryListTriedAp:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInputForConnect:Z

.field private mValidApList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/FreeWifiScanAccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

.field private previousSavedAp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field protected timeout_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x4b

    sput v0, Lcom/android/settings/wifi/FreeWifiScanSettings;->rssi:I

    const/16 v0, 0xd

    sput v0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectOnlyOnce:Z

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mDefaultAnsSettings:I

    iput v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Lcom/android/settings/wifi/FreeWifiScanSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanner:Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;

    const-string v0, "/data/misc/wifi/wpa_supplicant.conf"

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->SUPPLICANT_CONF_PATH:Ljava/lang/String;

    const-string v0, "/data/misc/wifi/wpa_supplicant_copy.conf"

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->SUPPLICANT_CONF_BKP_PATH:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    new-instance v0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$16;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateConnectableApList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/Boolean;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1    # Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setRefreshAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1    # Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/FreeWifiScanSettings;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectOnlyOnce:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/FreeWifiScanSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1    # Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->saveAP(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/FreeWifiScanSettings;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->findAndUpdateOpenAp(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/FreeWifiScanSettings;)Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateUiConnecting()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateTitleAndProgressToDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateTitleAndProgressToScan()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V

    return-void
.end method

.method private connectToOpenAp()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeWifiScanSettings"

    const-string v3, "Scanning was interrupted due to manual connection failed, now Handled."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const-string v0, "FreeWifiScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FreeWifiScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const-string v0, "FreeWifiScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accessPointsToConnect.size() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v0, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-le v0, v7, :cond_2

    const-string v4, "FreeWifiScanSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing ssid : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    :goto_1
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "All Scanned AP tried, Now next scan results will be tried"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    iput-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$11;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_1

    :cond_4
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "All Scanned AP tried, Now next scan results will be tried"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    iput-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$12;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    goto :goto_2

    :cond_5
    const-string v4, "FreeWifiScanSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FreeWifiScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AP index :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v0, :cond_7

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-le v0, v7, :cond_7

    const-string v4, "FreeWifiScanSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing ssid : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-nez v5, :cond_6

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->generateOpenNetworkConfig()V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    sget v1, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$13;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_4

    :cond_9
    iput-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto/16 :goto_0
.end method

.method private findAndUpdateOpenAp(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const v6, 0x7f091c23

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ssid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRINTING PREF Key that will be searched for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pref is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PREF found --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const v1, 0x7f091c2c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v5, :cond_2

    const v1, 0x7f091c25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    const v1, 0x7f091c21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    const v1, 0x7f091c26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT ABLE TO CONNECT to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x5

    if-ne p2, v1, :cond_7

    const v1, 0x7f0902ed

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const-string v1, "FreeWifiScanSettings"

    const-string v2, "CONNECTED TO OPEN AP OF USER CHOICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    const v1, 0x7f091c2e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const-string v1, "FreeWifiScanSettings"

    const-string v2, "preference not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getIntentFilters()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.OPEN_AP_CHECK_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0    # Landroid/net/wifi/WifiConfiguration;

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private saveAP(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSavedApList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved AP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into history list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private saveAP(Landroid/net/wifi/WifiInfo;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSavedApList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved AP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into history list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setFreeWifiScanOpenApCheck(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xdd

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_0
    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setRefreshAction(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;->onScanCompleted(Ljava/lang/Boolean;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private updateConnectableApList()V
    .locals 12

    const/4 v11, 0x0

    const-string v9, "FreeWifiScanSettings"

    const-string v10, "updateConnectableApList"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    iput v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v9

    if-nez v9, :cond_0

    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    sget v10, Lcom/android/settings/wifi/FreeWifiScanSettings;->rssi:I

    if-le v9, v10, :cond_0

    iget-object v5, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    new-instance v10, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v6}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v9, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->bssid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->update(Landroid/net/wifi/WifiInfo;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    const-string v9, "FreeWifiScanSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Accesspoint data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "FreeWifiScanSettings"

    const-string v10, "updating preference list with title and summary !"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/FreeWifiScanSettings$10;

    invoke-direct {v10, p0, v7, v8}, Lcom/android/settings/wifi/FreeWifiScanSettings$10;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->generateOpenNetworkConfig()V

    move v3, v4

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mNoAps:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_3
    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mNoAps:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "FreeWifiScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v2, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->bssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTitleAndProgressToDone()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    return-void
.end method

.method private updateTitleAndProgressToScan()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f091c29

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    return-void
.end method

.method private updateUiConnecting()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f091c2d

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    return-void
.end method

.method private updateUserInputForConnect(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "FreeWifiScanSettings"

    const-string v1, "updateUserInputForConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings$7;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected handleReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleReceivedEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-eqz v6, :cond_0

    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "wifiInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    if-nez v5, :cond_3

    const-string v6, "FreeWifiScanSettings"

    const-string v7, "wifiinfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string v6, "android.net.wifi.OPEN_AP_CHECK_RESULT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "FreeWifiScanSettings"

    const-string v7, "received intent FREE_WIFI_SCAN_OPEN_AP_CHECK_RESULT"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "wifiInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "FreeWifiScanSettings"

    const-string v7, "Time out has happenned for this SSID, do not update"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "FreeWifiScanSettings"

    const-string v7, "completed open ap check result before timeout"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    const-string v6, "free_wifi_scan_open_network_status"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssid received :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bssid received :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    iget v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    if-ne v6, v10, :cond_7

    const-string v6, "FreeWifiScanSettings"

    const-string v7, "FOUND internet AP !!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_6
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "timeout already handled, ignore the open ap result"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-boolean v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateUserInputForConnect(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->saveAP(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/FreeWifiScanSettings$9;

    invoke-direct {v7, p0, v3, v4}, Lcom/android/settings/wifi/FreeWifiScanSettings$9;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x1

    const-string v2, "FreeWifiScanSettings"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/settings/wifi/FreeWifiScanSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$2;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v2, Lcom/android/settings/wifi/FreeWifiScanSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$3;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v2, Lcom/android/settings/wifi/FreeWifiScanSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$4;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSavedApList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iput-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    iget-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$5;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v3, v2, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->scanListner:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    const-string v2, "FreeWifiScanSettings"

    const-string v3, "PRINTING LIST OF PREVIOUS NETWORKS CONFIGURED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FreeWifiScanSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID of saved network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$6;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getIntentFilters()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FreeWifiScanSettings"

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "connectable_ap"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    const-string v0, "no_connectable_ap"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mNoAps:Landroid/preference/PreferenceGroup;

    const-string v0, "wifi_free_wifi_scan_keep_connected_switch"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    new-instance v0, Lcom/android/settings/wifi/FreeWifiScanSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$1;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_free_wifi_scan_auto_connection_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_free_wifi_scan_auto_connection_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onDetach()V
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->isLaunched:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_1
    const-string v3, "FreeWifiScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_3
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "reconnecting again in settings screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    const-string v0, "FreeWifiScanSettings"

    const-string v1, "Enabling all the networks with DISABLE_NETWORK_BY_FWS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_2

    :cond_5
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "onDetach gets called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FreeWifiScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current network ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FreeWifiScanSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const v12, 0x7f091c27

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "FreeWifiScanSettings"

    const-string v10, "onPreferenceTreeClick"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "wifi_free_wifi_scan_keep_connected_switch"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_free_wifi_scan_auto_connection_mode"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "wifi_free_wifi_scan_auto_connection_mode"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    :goto_1
    const-string v7, "FreeWifiScanSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIFI_FREE_WIFI_SCAN_AUTO_CONNECTION_MODE id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_free_wifi_scan_auto_connection_mode"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return v8

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-eq v7, v8, :cond_0

    const-string v7, "FreeWifiScanSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "user wants to connect to open AP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "FreeWifiScanSettings"

    const-string v10, "User wants to connect to AP not updated with summary"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    const v10, 0x7f091c28

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_4

    const-string v7, "FreeWifiScanSettings"

    const-string v10, "user wants to connect to AP with no free internet"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v7, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_5

    const-string v7, "FreeWifiScanSettings"

    const-string v10, "user wants to connect to AP with no free internet"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v7, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_5
    iput-boolean v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v7, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v4, 0x1

    :cond_8
    if-nez v4, :cond_d

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :cond_a
    const-string v7, "FreeWifiScanSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    if-le v6, v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v7, v6, v10}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_b
    :goto_4
    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->generateOpenNetworkConfig()V

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget-object v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v10, v7, v11}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    sget v10, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout:I

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v10, Lcom/android/settings/wifi/FreeWifiScanSettings$8;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$8;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v7, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_d
    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_4
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FreeWifiScanSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public scanPressed()V
    .locals 8

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "FreeWifiScanSettings"

    const-string v4, "SCAN BUTTON PRESSED ! FRESH SCAN WILL BE STARTED!"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    const-string v0, "FreeWifiScanSettings"

    const-string v4, "Disabling all the networks"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xcb

    iput v0, v4, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v2, :cond_0

    const-string v7, "netId"

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "reason"

    const/16 v7, 0xf

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Lcom/android/settings/wifi/FreeWifiScanSettings$14;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$14;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-nez v5, :cond_3

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_2
    const-string v2, "FreeWifiScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateConnectableApList()V

    const-string v0, "FreeWifiScanSettings"

    const-string v1, "connecting to first AP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectOnlyOnce:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$15;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_1
.end method
