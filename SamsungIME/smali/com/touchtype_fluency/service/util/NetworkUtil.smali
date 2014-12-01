.class public Lcom/touchtype_fluency/service/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    }
.end annotation


# static fields
.field private static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final IMPLIED_NETWORK_STATE:Z = true

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype_fluency/service/util/NetworkUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternetAvailability(Landroid/content/Context;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isConnected(Landroid/net/NetworkInfo;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/touchtype_fluency/service/util/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v3, "Permission ACCESS_NETWORK_STATE to read network state is denied."

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->IMPLIED:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getPreferredDataNetowrk()Ljava/lang/String;
    .locals 2

    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isConnected(Landroid/net/NetworkInfo;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->OTHER:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->MOBILE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->WIFI:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->ETHERNET:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->NONE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public static isDataRoammingOff(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFlightMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isInternetAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->getInternetAvailability(Landroid/content/Context;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->NONE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMobileDataOff(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNoSignal(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataServiceState()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static isReachToDataLimit(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isRoamming(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method public static isWIFIorETHERNETConnected(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->getInternetAvailability(Landroid/content/Context;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->WIFI:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->ETHERNET:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->OTHER:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
