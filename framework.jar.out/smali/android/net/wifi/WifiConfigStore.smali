.class Landroid/net/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfigStore$1;,
        Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;,
        Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IPCONFIG_FILE_VERSION:I = 0x2

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field private static final PROXY_PASSWORD_KEY:Ljava/lang/String; = "proxyPassword"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final PROXY_USERNAME_KEY:Ljava/lang/String; = "proxyUsername"

.field private static final RELOAD_CONFIG:I = -0x64

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final VDBG:Z

.field private static final WIFI_AUTOJOIN:Z

.field private static final WIFI_ERRORCODE:Z

.field private static final ipConfigFile:Ljava/lang/String;

.field private static final mCorpNetPriorityLimit:I = 0x2710

.field private static mLastCorporatePriority:I = 0x0

.field private static mLastOpenPriority:I = 0x0

.field private static final mOpenNetPriorityLimit:I = 0x1388


# instance fields
.field private mConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    sput-boolean v0, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    sput v2, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    sput v2, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiConfigStore;->WIFI_AUTOJOIN:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiConfigStore;->WIFI_ERRORCODE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Landroid/net/wifi/WifiConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    iput-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 28

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v25, :cond_0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addOrUpdateNetworkNative "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static/range {p1 .. p1}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v18

    :cond_1
    const/16 v23, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_5

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_4

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set SSID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :goto_0
    if-eqz v23, :cond_3c

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_2
    new-instance v20, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v25, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    :goto_1
    return-object v20

    :cond_3
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiNative;->addNetwork()I

    move-result v18

    if-gez v18, :cond_1

    const-string v25, "Failed to add a network!"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    new-instance v20, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v25, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_1

    :cond_4
    const-string v25, "failed to set SSID"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->WIFI_AUTOJOIN:Z

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "autojoin"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_7

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_6

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set SSID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v25, "failed to set SSID"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_9

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_8

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set BSSID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v25, "failed to set BSSID"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$OperationMode;->IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "mode"

    const-string v27, "1"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    const-string v25, "failed to set adhoc mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "frequency"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    const-string v25, "failed to set frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/BitSet;->cardinality()I

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "key_mgmt"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set key_mgmt: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/BitSet;->cardinality()I

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "proto"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v8}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_d

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set proto: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Ljava/util/BitSet;->get(I)Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "psk_key_type"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_f

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_e

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set WAPI_PSK key type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set WAPI_PSK key type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "*"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1c

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set psk: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v25, v0

    const/16 v26, 0x6

    invoke-virtual/range {v25 .. v26}, Ljava/util/BitSet;->get(I)Z

    move-result v25

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "cert_index"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_12

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_11

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set WAPI_CERT index: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set WAPI_CERT index: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string/jumbo v26, "wapi_as_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_13

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set WAPI_CERT as cert: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string/jumbo v26, "wapi_user_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1c

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set WAPI_CERT user cert: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/BitSet;->cardinality()I

    move-result v25

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "auth_alg"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_15

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set auth_alg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/BitSet;->cardinality()I

    move-result v25

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "pairwise"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_16

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set pairwise: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/BitSet;->cardinality()I

    move-result v25

    if-eqz v25, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "group"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_17

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set group: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "*"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_18

    const-string v25, "failed to set psk"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1b

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_1b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v14

    if-eqz v25, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v14

    const-string v26, "*"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v26, v26, v14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v27, v27, v14

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_19

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set wep_key"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const/4 v13, 0x1

    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1b
    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string/jumbo v26, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1c

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1e

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_1d

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set priority: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set priority: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v25, v0

    if-eqz v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    const/16 v25, 0x1

    :goto_3
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_21

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_20

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set hiddenSSID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const/16 v25, 0x0

    goto :goto_3

    :cond_20
    const-string v25, "failed to set hiddenSSID"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    if-eqz v25, :cond_28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v25, v0

    if-lez v25, :cond_28

    :cond_22
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->needsKeyStore()Z

    move-result v25

    if-eqz v25, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v25

    sget-object v26, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_23

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": key store is locked"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->installKeys(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to install keys"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " invalid config for key installation"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_25
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_28

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string/jumbo v25, "wapi_as_cert"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_25

    const-string/jumbo v25, "wapi_user_cert"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_25

    const-string v25, "password"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_26

    const-string v25, "*"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_25

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeKeys(Landroid/security/KeyStore;)V

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_27

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/BitSet;->cardinality()I

    move-result v25

    if-eqz v25, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "sec_flags"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_29

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "failed to set sec_flags: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "captive_portal"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2a

    const/16 v25, 0x1

    :goto_4
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2c

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_2b

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set isCaptivePortal: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    const/16 v25, 0x0

    goto :goto_4

    :cond_2b
    const-string v25, "failed to set isCaptivePortal"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "authenticated"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2d

    const/16 v25, 0x1

    :goto_5
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2f

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_2e

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set isAuthenticated: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    const/16 v25, 0x0

    goto :goto_5

    :cond_2e
    const-string v25, "failed to set isAuthenticated"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "usable_internet"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v25, v0

    if-eqz v25, :cond_30

    const/16 v25, 0x1

    :goto_6
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_32

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_31

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set isUsableInternet: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const/16 v25, 0x0

    goto :goto_6

    :cond_31
    const-string v25, "failed to set isUsableInternet"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_32
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "skip_internet_check"

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_33

    :try_start_1
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    if-eqz v25, :cond_34

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_33
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "skip_internet_check"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    move/from16 v25, v0

    if-eqz v25, :cond_35

    const/16 v25, 0x1

    :goto_9
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_37

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_36

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set skipInternetCheck: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    const/16 v25, 0x0

    goto :goto_7

    :cond_35
    const/16 v25, 0x0

    goto :goto_9

    :cond_36
    const-string v25, "failed to set skipInternetCheck"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "shared"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v25, v0

    if-eqz v25, :cond_38

    const/16 v25, 0x1

    :goto_a
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3a

    sget-boolean v25, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v25, :cond_39

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": failed to set isSharedAp: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_38
    const/16 v25, 0x0

    goto :goto_a

    :cond_39
    const-string v25, "failed to set isSharedAp"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string v26, "expiration"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3b

    const-string v25, "failed to set expiration"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3b
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    if-nez v9, :cond_3d

    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    sget-object v25, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v25

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v25, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v25

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move/from16 v0, v18

    iput v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :cond_3d
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;->setNetworkId(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v25

    goto/16 :goto_8
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;
    .locals 6

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    :cond_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_1

    :cond_1
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-object v4

    :catch_0
    move-exception v4

    const-string v4, ""

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private edmCanEnableNetwork(IZZ)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-nez v2, :cond_1

    if-ltz p1, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    array-length v1, p2

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v3, :cond_0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readIpAndProxyConfigurations()V
    .locals 27

    const/4 v14, 0x0

    :try_start_0
    new-instance v15, Ljava/io/DataInputStream;

    new-instance v24, Ljava/io/BufferedInputStream;

    new-instance v25, Ljava/io/FileInputStream;

    sget-object v26, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v25 .. v26}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    const-string v24, "Bad version on IP configuration file, ignore read"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_0

    :try_start_2
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v14, v15

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    const-string v24, "eos"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v24

    if-eqz v24, :cond_13

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_16

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    if-nez v9, :cond_14

    const-string v24, "configuration found for missing network, ignored"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v13, -0x1

    sget-object v16, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v22, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    new-instance v19, Landroid/net/LinkProperties;

    invoke-direct/range {v19 .. v19}, Landroid/net/LinkProperties;-><init>()V

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v17

    :try_start_5
    const-string v24, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    goto :goto_3

    :cond_4
    const-string v24, "ipAssignment"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v16

    goto :goto_3

    :cond_5
    const-string v24, "linkAddress"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    new-instance v18, Landroid/net/LinkAddress;

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v25

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v11

    :try_start_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Ignore invalid address while reading"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v24

    move-object v14, v15

    :goto_4
    if-eqz v14, :cond_1

    :try_start_7
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v24

    goto/16 :goto_1

    :cond_6
    :try_start_8
    const-string v24, "gateway"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    :cond_7
    :goto_5
    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v10, v12}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception v11

    move-object v14, v15

    :goto_6
    :try_start_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error parsing configuration"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v14, :cond_1

    :try_start_a
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    :cond_8
    :try_start_b
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    new-instance v10, Landroid/net/LinkAddress;

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_9
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    goto :goto_5

    :cond_a
    const-string v24, "dns"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v24

    move-object v14, v15

    :goto_7
    if-eqz v14, :cond_b

    :try_start_c
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_b
    :goto_8
    throw v24

    :cond_c
    :try_start_d
    const-string v24, "proxySettings"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v22

    goto/16 :goto_3

    :cond_d
    const-string v24, "proxyHost"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_e
    const-string v24, "proxyPort"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    goto/16 :goto_3

    :cond_f
    const-string v24, "proxyPac"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    :cond_10
    const-string v24, "exclusionList"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    :cond_11
    const-string v24, "proxyUsername"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_12
    const-string v24, "proxyPassword"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :cond_13
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Ignore unknown key "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "while reading"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :cond_14
    :try_start_e
    move-object/from16 v0, v19

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    sget-object v24, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    const-string v24, "Ignore invalid ip assignment while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :goto_9
    sget-object v24, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_1

    const-string v24, "Ignore invalid proxy settings while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_9

    :pswitch_1
    const-string v24, "BUG: Found UNASSIGNED IP on file, use DHCP"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v24, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v24

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_9

    :pswitch_2
    move-object/from16 v0, v22

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    new-instance v3, Landroid/net/ProxyProperties;

    invoke-direct/range {v3 .. v8}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_2

    :cond_15
    new-instance v3, Landroid/net/ProxyProperties;

    invoke-direct {v3, v4, v5, v8}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a

    :pswitch_3
    move-object/from16 v0, v22

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    new-instance v21, Landroid/net/ProxyProperties;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, v22

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto/16 :goto_2

    :pswitch_5
    const-string v24, "BUG: Found UNASSIGNED proxy on file, use NONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v24, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v24

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto/16 :goto_2

    :cond_16
    sget-boolean v24, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v24, :cond_3

    const-string v24, "Missing id while parsing configuration"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    :catch_4
    move-exception v25

    goto/16 :goto_8

    :catch_5
    move-exception v24

    goto/16 :goto_0

    :catchall_1
    move-exception v24

    goto/16 :goto_7

    :catch_6
    move-exception v11

    goto/16 :goto_6

    :catch_7
    move-exception v24

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 18

    move-object/from16 v0, p1

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "ssid"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x22

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v14}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "hessid"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "isHS20AP"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_f

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "isHS20Home"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_e

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "HS20CredId"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_d

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "HS20OperatorName"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Landroid/net/wifi/WifiConfigStore;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "HS20VenueName"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Landroid/net/wifi/WifiConfigStore;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "$$$"

    invoke-static {v2, v15}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v15, -0x1

    if-eq v1, v15, :cond_a

    add-int/lit8 v15, v1, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    const-string v17, "sec_flags"

    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    array-length v10, v3

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v10, :cond_c

    aget-object v12, v3, v6

    sget-object v15, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_3
    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    goto/16 :goto_3

    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    goto/16 :goto_4

    :cond_8
    const/4 v15, -0x1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    goto/16 :goto_5

    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    goto/16 :goto_6

    :cond_a
    const-string v15, "***$$$ is not in venue "

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "mode"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/net/wifi/WifiConfiguration$OperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$OperationMode;

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    :try_start_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    sget-object v15, Landroid/net/wifi/WifiConfiguration$OperationMode;->IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

    :goto_9
    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_d
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "frequency"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_e

    :try_start_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_e
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "bssid"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_15

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :goto_c
    sget-boolean v15, Landroid/net/wifi/WifiConfigStore;->WIFI_AUTOJOIN:Z

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "autojoin"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_16

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "priority"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    :try_start_5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_c

    :cond_10
    :goto_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "simnumber"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->simnum:I

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_11

    :try_start_6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->simnum:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_b

    :cond_11
    :goto_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "scan_ssid"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_12

    :try_start_7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_17

    const/4 v15, 0x1

    :goto_10
    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_12
    :goto_11
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v16, "wep_tx_keyidx"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13

    :try_start_8
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9

    :cond_13
    :goto_12
    const/4 v5, 0x0

    :goto_13
    const/4 v15, 0x4

    if-ge v5, v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    sget-object v16, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v16, v16, v5

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_18

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v14, v15, v5

    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_14
    :try_start_9
    sget-object v15, Landroid/net/wifi/WifiConfiguration$OperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$OperationMode;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v7

    const-string v15, "WifiConfigStore"

    const-string v16, "modeVarName number exception"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_1
    move-exception v7

    const-string v15, "WifiConfigStore"

    const-string v16, "frequency number exception"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_15
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_c

    :cond_16
    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    goto/16 :goto_d

    :cond_17
    const/4 v15, 0x0

    goto :goto_10

    :cond_18
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v16, v15, v5

    goto :goto_14

    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "psk"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1b

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_15
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    const-string v17, "proto"

    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1c

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    array-length v10, v3

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v10, :cond_1c

    aget-object v12, v3, v6

    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1a

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->set(I)V

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1b
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_15

    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    const-string v17, "key_mgmt"

    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1e

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    array-length v10, v3

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v10, :cond_1e

    aget-object v12, v3, v6

    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1d

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->set(I)V

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    const-string v17, "auth_alg"

    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_20

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    array-length v10, v3

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v10, :cond_20

    aget-object v12, v3, v6

    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1f

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->set(I)V

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    const-string v17, "pairwise"

    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    array-length v10, v3

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v10, :cond_22

    aget-object v12, v3, v6

    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_21

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->set(I)V

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_22
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    const-string v17, "group"

    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_24

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    array-length v10, v3

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v10, :cond_24

    aget-object v12, v3, v6

    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_23

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->set(I)V

    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_24
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v15, :cond_25

    new-instance v15, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v15}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :cond_25
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Landroid/net/wifi/WifiEnterpriseConfig;->getSupplicantKeys()[Ljava/lang/String;

    move-result-object v3

    array-length v10, v3

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v10, :cond_27

    aget-object v9, v3, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v15, v11, v9}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_26

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_26
    const-string v15, "NULL"

    invoke-virtual {v4, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_27
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "captive_portal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_28

    :try_start_a
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_30

    const/4 v15, 0x1

    :goto_1d
    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_8

    :cond_28
    :goto_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "authenticated"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_29

    :try_start_b
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_31

    const/4 v15, 0x1

    :goto_1f
    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    :cond_29
    :goto_20
    sget-boolean v15, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v15, :cond_2a

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v15, :cond_2a

    const-string v15, "WifiConfigStore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is a captive portal!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    if-eqz v15, :cond_32

    const-string v15, "WifiConfigStore"

    const-string v16, "authenticated on previous connection"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_21
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v16, "usable_internet"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2b

    :try_start_c
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_33

    const/4 v15, 0x1

    :goto_22
    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_6

    :goto_23
    sget-boolean v15, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v15, :cond_2b

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    if-eqz v15, :cond_2b

    const-string v15, "WifiConfigStore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is a Internet available AP!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "skip_internet_check"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2c

    :try_start_d
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_34

    const/4 v15, 0x1

    :goto_24
    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5

    :goto_25
    sget-boolean v15, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v15, :cond_2c

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    if-eqz v15, :cond_2c

    const-string v15, "WifiConfigStore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is a AP excluded from network switch!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "shared"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2d

    :try_start_e
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_35

    const/4 v15, 0x1

    :goto_26
    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4

    :cond_2d
    :goto_27
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "expiration"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_36

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    :goto_28
    sget-boolean v15, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v15, :cond_2e

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    if-eqz v15, :cond_2e

    const-string v15, "WifiConfigStore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is a shared AP!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiConfigStore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'s expiration is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_37

    const-string v15, "WifiConfigStore"

    const-string v16, "Not a HS20"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->migrateOldEapTlsNative(Landroid/net/wifi/WifiNative;I)Z

    move-result v15

    if-eqz v15, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    :cond_2f
    :goto_29
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiEnterpriseConfig;->migrateCerts(Landroid/security/KeyStore;)V

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiEnterpriseConfig;->initializeSoftwareKeystoreFlag(Landroid/security/KeyStore;)V

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_38

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "psk_key_type"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***WAPI : readNetworkVariables WAPI_PSK key type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    :try_start_f
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v15

    goto/16 :goto_0

    :cond_30
    const/4 v15, 0x0

    goto/16 :goto_1d

    :cond_31
    const/4 v15, 0x0

    goto/16 :goto_1f

    :cond_32
    const-string v15, "WifiConfigStore"

    const-string v16, "not authenticated yet"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_33
    const/4 v15, 0x0

    goto/16 :goto_22

    :cond_34
    const/4 v15, 0x0

    goto/16 :goto_24

    :cond_35
    const/4 v15, 0x0

    goto/16 :goto_26

    :cond_36
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    goto/16 :goto_28

    :cond_37
    const-string v15, "WifiConfigStore"

    const-string v16, "HS20 Ap: Don\'t Change"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    :cond_38
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v16, "cert_index"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***WAPI : readNetworkVariables WAPI_CERT index "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_39

    :try_start_10
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_3

    :cond_39
    :goto_2a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v16, "wapi_as_cert"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***WAPI : readNetworkVariables WAPI_CERT as cert "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3a

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    :goto_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v16, "wapi_user_cert"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***WAPI : readNetworkVariables WAPI_CERT user cert "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3b

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3a
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_2b

    :cond_3b
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_0

    :catch_3
    move-exception v15

    goto :goto_2a

    :catch_4
    move-exception v15

    goto/16 :goto_27

    :catch_5
    move-exception v15

    goto/16 :goto_25

    :catch_6
    move-exception v15

    goto/16 :goto_23

    :catch_7
    move-exception v15

    goto/16 :goto_20

    :catch_8
    move-exception v15

    goto/16 :goto_1e

    :catch_9
    move-exception v15

    goto/16 :goto_12

    :catch_a
    move-exception v15

    goto/16 :goto_11

    :catch_b
    move-exception v15

    goto/16 :goto_f

    :catch_c
    move-exception v15

    goto/16 :goto_e

    :catch_d
    move-exception v15

    goto/16 :goto_5

    :catch_e
    move-exception v15

    goto/16 :goto_4

    :catch_f
    move-exception v15

    goto/16 :goto_3
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v2, v4, :cond_2

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    invoke-direct {p0, v0, v4}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->removeKeys(Landroid/security/KeyStore;)V

    goto :goto_0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->write(Ljava/util/List;)V

    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 19

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    sget-object v17, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    const-string v17, "Ignore invalid ip assignment during write"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_0
    sget-object v17, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_1

    const-string v17, "Ignore invalid proxy configuration during write"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_1
    :pswitch_1
    if-nez v8, :cond_f

    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiConfigStore;->copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;

    move-result-object v10

    :goto_2
    if-nez v15, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    :goto_3
    if-nez v8, :cond_3

    if-eqz v15, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    :cond_4
    new-instance v17, Landroid/net/wifi/NetworkUpdateResult;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v15}, Landroid/net/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v17

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-interface {v5, v13}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_9

    :cond_5
    const/4 v9, 0x1

    :goto_4
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    invoke-interface {v3, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_a

    :cond_6
    const/4 v7, 0x1

    :goto_5
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-interface {v6, v14}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_7
    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    if-nez v9, :cond_8

    if-nez v7, :cond_8

    if-eqz v16, :cond_0

    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    goto :goto_6

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    if-eqz v12, :cond_d

    invoke-virtual {v12, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const/4 v15, 0x1

    :goto_7
    goto/16 :goto_1

    :cond_c
    const/4 v15, 0x0

    goto :goto_7

    :cond_d
    if-eqz v4, :cond_e

    const/4 v15, 0x1

    :goto_8
    goto/16 :goto_1

    :cond_e
    const/4 v15, 0x0

    goto :goto_8

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;

    move-result-object v10

    sget-boolean v17, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v17, :cond_10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IP config changed SSID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " linkProperties: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IP config changed, linkProperties: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    sget-boolean v17, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v17, :cond_12

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "proxy changed SSID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    if-eqz v17, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " proxyProperties: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    const-string v17, "proxy changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addHs20Network(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfigStore;->addHs20NetworkNative(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    :cond_0
    return v0
.end method

.method addHs20NetworkNative(Ljava/lang/String;)I
    .locals 5

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiNative;->addHs20Network(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v1
.end method

.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    sget-boolean v1, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "addOrUpdateNetwork"

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v0, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method addToConfiguredNetworks()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, -0x1

    iget-object v7, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_0

    aget-object v7, v3, v2

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v10, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_2

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    array-length v7, v6

    if-le v7, v11, :cond_7

    aget-object v7, v6, v11

    const-string v8, "[CURRENT]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_5

    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    :goto_2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    sget-boolean v7, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddToConfiguredNetworks adds ssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    goto :goto_1

    :cond_5
    aget-object v7, v6, v11

    const-string v8, "[DISABLED]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_6

    const/4 v7, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2

    :cond_6
    iput v13, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2

    :cond_7
    iput v13, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2
.end method

.method clearLinkProperties(I)V
    .locals 4

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_0
    return-void
.end method

.method disableAllNetworks()V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v3, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableAllNetworks"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiNative;->disableNetworkWithReason(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    :cond_4
    return-void
.end method

.method disableNetwork(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method disableNetwork(II)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiNative;->disableNetworkWithReason(II)Z

    move-result v2

    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNetwork:  netId  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v6, :cond_0

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move-object v1, v0

    sget-boolean v3, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] saved recoverableRSSI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    :cond_1
    return v2
.end method

.method disablePoorNetwork(IILjava/lang/String;Z)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v3, p2, 0xa

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    if-eqz p4, :cond_2

    const/16 v1, 0xc

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    sget-boolean v2, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] recoverableRSSI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " config.disabledTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    goto :goto_1
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v2, "WifiConfigStore"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Configured networks"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v2, :cond_1

    const-string v2, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v2, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method enableAllNetworks()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xe

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfigStore;->isEapNoPasswordRequire(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3, v5, v5}, Landroid/net/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/net/wifi/WifiConfigStore;->WIFI_ERRORCODE:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    :cond_1
    sget v3, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    if-ne v3, v6, :cond_2

    sget v3, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    if-eq v3, v6, :cond_4

    :cond_2
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    :cond_7
    return-void
.end method

.method enableDisabledPoorNetwork()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    :cond_1
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-boolean v2, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] enableDisabledPoorNetwork"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v2, -0xc8

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v2, v5}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method enableNetwork(IZ)Z
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v2

    if-eqz p2, :cond_2

    sget-boolean v3, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "enableNetwork(disableOthers=true) "

    invoke-direct {p0, v3, p1}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    :cond_1
    :goto_0
    return v2

    :cond_2
    sget-boolean v3, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_3

    const-string v3, "enableNetwork(disableOthers=false) "

    invoke-direct {p0, v3, p1}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_3
    const/4 v1, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v1, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/net/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    sget v3, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    if-ne v3, v5, :cond_2

    sget v3, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    if-eq v3, v5, :cond_3

    :cond_2
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    goto :goto_0
.end method

.method enableNetworks(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    :cond_3
    return-void
.end method

.method forgetNetwork(I)Z
    .locals 2

    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "forgetNetwork"

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getProxyProperties(I)Landroid/net/ProxyProperties;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSecuredNetworkInfo(I)Ljava/lang/String;
    .locals 5

    sget-boolean v2, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecuredNetworkInfo nid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const-string v0, "\n"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v3, "ssid"

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v3, "psk"

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiNative;->getSecuredNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    sget-object v3, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiNative;->getSecuredNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method isEapNoPasswordRequire(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isEnterpriseAp(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
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

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method isIBSS(I)Z
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$OperationMode;->IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSkipInternetCheck(I)Z
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v2, "skip_internet_check"

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsingSamsungFlag(II)Z
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isUsingStaticIp(I)Z
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVendorSpecificSsid(I)Z
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v2, "vendor_spec_ssid"

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAndEnableAllNetworks()V
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading config and enabling all networks"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 12

    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    const-string v9, "PrivateFirst"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    sput v9, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    const/4 v9, 0x0

    sput v9, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    :cond_0
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    :goto_1
    array-length v9, v4

    if-ge v2, v9, :cond_13

    aget-object v9, v4, v2

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v9, v8

    const/4 v10, 0x3

    if-le v9, v10, :cond_a

    const/4 v9, 0x3

    aget-object v9, v8, v9

    const-string v10, "[CURRENT]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    const/4 v9, 0x0

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    :goto_2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    const-string v9, "PrivateFirst"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/16 v10, 0x1388

    if-ge v9, v10, :cond_b

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v9, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    :goto_3
    const-string v9, "WifiConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadConfiguredNetworks config.priority= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    const-string v9, "PrivateFirst"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-nez v9, :cond_5

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_4
    const/16 v9, 0x1389

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_5
    :goto_5
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    :cond_6
    sget-object v9, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    const-string v9, "PrivateFirst"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read network-id \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const/4 v9, 0x3

    aget-object v9, v8, v9

    const-string v10, "[DISABLED]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    const/4 v9, 0x1

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_2

    :cond_9
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_2

    :cond_a
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_2

    :cond_b
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/16 v10, 0x1388

    if-le v9, v10, :cond_c

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/16 v10, 0x2710

    if-ge v9, v10, :cond_c

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v9, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    goto/16 :goto_3

    :cond_c
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    goto/16 :goto_3

    :cond_d
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-le v9, v10, :cond_3

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    goto/16 :goto_4

    :cond_e
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v9, 0x2711

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    :cond_f
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-eqz v9, :cond_10

    const/16 v9, 0x2711

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    :cond_10
    const/4 v9, 0x1

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    :cond_11
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_7

    const-string v9, "discarded duplicate network"

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_12
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_7

    const-string v9, "loaded configured network"

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_13
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadConfiguredNetworks loaded "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_14
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_15

    const-string v9, "--- Begin wpa_supplicant.conf Contents ---"

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_17

    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_16

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_17
    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_18

    const-string v9, "--- End wpa_supplicant.conf Contents ---"

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_18
    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :goto_8
    :try_start_4
    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_19
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :goto_9
    :try_start_6
    sget-boolean v9, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_1a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1a
    if-eqz v6, :cond_1

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    :goto_a
    if-eqz v6, :cond_1b

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_1b
    :goto_b
    throw v9

    :catch_4
    move-exception v10

    goto :goto_b

    :catchall_1
    move-exception v9

    move-object v6, v7

    goto :goto_a

    :catch_5
    move-exception v1

    move-object v6, v7

    goto :goto_9

    :catch_6
    move-exception v1

    move-object v6, v7

    goto :goto_8
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->needsSoftwareBackedKeyStore()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method removeFromConfiguredNetworks()V
    .locals 7

    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v6, "key_mgmt"

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveFromConfiguredNetworks removes ssid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method removeNetwork(I)Z
    .locals 2

    sget-boolean v1, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "removeNetwork"

    invoke-direct {p0, v1, p1}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)V

    :cond_1
    return v0
.end method

.method saveConfig()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 9

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, -0x1

    sget-boolean v6, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "saveNetwork"

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v6, v7}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    if-eqz p1, :cond_1

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_2

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_2

    :cond_1
    new-instance v2, Landroid/net/wifi/NetworkUpdateResult;

    invoke-direct {v2, v8}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    :goto_0
    return-object v2

    :cond_2
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_4

    move v1, v3

    :goto_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    if-eqz v1, :cond_3

    if-eq v0, v8, :cond_3

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v6, v4, v3}, Landroid/net/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method selectNetwork(I)Z
    .locals 14

    const/4 v1, 0x3

    const/16 v7, 0x2711

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "selectNetwork"

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    if-ne p1, v6, :cond_1

    :goto_0
    return v5

    :cond_1
    const-string v0, "PrivateFirst"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    const v3, 0xf4240

    if-gt v0, v3, :cond_2

    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    const/16 v3, 0x2710

    if-gt v0, v3, :cond_2

    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    const/16 v3, 0x1388

    if-le v0, v3, :cond_5

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v6, :cond_3

    iput v5, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_1

    :cond_4
    iput v7, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    sput v5, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    const/16 v0, 0x1389

    sput v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    :cond_5
    :goto_2
    new-instance v10, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v10}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput p1, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->WIFI_AUTOJOIN:Z

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    :cond_6
    const-string v0, "PrivateFirst"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempconfig netid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    if-eqz v13, :cond_c

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    const/16 v3, 0x1388

    if-lt v0, v3, :cond_8

    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    const/16 v3, 0x2710

    if-le v0, v3, :cond_11

    :cond_8
    const/16 v0, 0x1389

    sput v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_9
    :goto_3
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-ge v0, v7, :cond_12

    iput v7, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_a
    :goto_4
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v5

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-ge v0, v7, :cond_13

    iput v7, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_b
    :goto_5
    const-string v0, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "written priority"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    invoke-virtual {p0, p1, v2}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v12

    if-eqz v12, :cond_18

    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connecting to Wi-Fi network whose ID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_7
    move v5, v2

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v0, v6, :cond_e

    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    const v3, 0xf4240

    if-le v0, v3, :cond_5

    :cond_e
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v6, :cond_f

    iput v5, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_8

    :cond_10
    iput v5, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    goto/16 :goto_2

    :cond_11
    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/WifiConfigStore;->mLastCorporatePriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_3

    :cond_12
    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_4

    :cond_13
    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    :cond_14
    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    if-eqz v0, :cond_15

    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    const/16 v3, 0x1388

    if-le v0, v3, :cond_16

    :cond_15
    sput v2, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    :cond_16
    sget v0, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/WifiConfigStore;->mLastOpenPriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    :cond_17
    iget v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_6

    :cond_18
    const/4 v3, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiConfigStore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to Wi-Fi network whose ID is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " failed"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v4, v1

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method setLinkProperties(ILandroid/net/LinkProperties;)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    :cond_1
    return-void
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3

    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4

    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3

    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method updateAutojoin(II)V
    .locals 4

    sget-boolean v1, Landroid/net/wifi/WifiConfigStore;->WIFI_AUTOJOIN:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    sget-boolean v1, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTOJOIN setup for netID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v2, "autojoin"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    sget-boolean v1, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTOJOIN readup val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    const-string v1, "failed to set SSID"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateDisabledPoorNetworkStatus(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    sget-boolean v1, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] updateDisabledPoorNetworkStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-wide v1, p1, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iput-wide v1, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iget-wide v1, p1, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iput-wide v1, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method updateHs20Network(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "updateHs20Network"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method updateSkipInternetCheck(IZ)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    goto :goto_0
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateUsableInternet(IZ)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    goto :goto_0
.end method
