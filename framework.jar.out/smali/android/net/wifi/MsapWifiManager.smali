.class public Landroid/net/wifi/MsapWifiManager;
.super Ljava/lang/Object;
.source "MsapWifiManager.java"


# static fields
.field public static Debug:Z = false

.field public static final EXTRA_ADDED_BSSID:Ljava/lang/String; = "addBssid"

.field public static final EXTRA_ADDED_HASH:Ljava/lang/String; = "addVenueHash"

.field public static final EXTRA_ADDED_NAME:Ljava/lang/String; = "addVenueName"

.field public static final EXTRA_ADDED_SERVERID:Ljava/lang/String; = "addServerId"

.field public static final EXTRA_ADDED_SSID:Ljava/lang/String; = "addSsid"

.field public static final EXTRA_DELETED_HASH:Ljava/lang/String; = "deleteVenueHash"

.field public static final EXTRA_DELETED_SERVERID:Ljava/lang/String; = "deleteServerId"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "erroInfo"

.field public static final EXTRA_POSTASSOC_MODE:Ljava/lang/String; = "post.association.mode"

.field public static final EXTRA_RSP_HASH:Ljava/lang/String; = "responseHash"

.field public static final EXTRA_RSP_LEN:Ljava/lang/String; = "payloadLen"

.field public static final EXTRA_RSP_SERVERID:Ljava/lang/String; = "responseId"

.field public static final GAS_RSP_ACTION:Ljava/lang/String; = "android.net.wifi.msap.GAS_RSP"

.field public static final PARSE_ERROR:I = 0x0

.field public static final PARSE_NOERROR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SamsungMSAP.MsapWifiManager"

.field public static final TIMEOUT_ERROR:I = 0x2

.field public static final VENUE_SERVER_ADDED_ACTION:Ljava/lang/String; = "android.net.wifi.msap.VENUE_SERVER_ADDED"

.field public static final VENUE_SERVER_DELETED_ACTION:Ljava/lang/String; = "android.net.wifi.msap.VENUE_SERVER_DELETED"


# instance fields
.field mMsapService:Landroid/net/wifi/IMsapWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/MsapWifiManager;->Debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IMsapWifiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    return-void
.end method


# virtual methods
.method public MsapWifiManagerStart()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IMsapWifiManager;->startWifiManager()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "MsapWifiManagerStart - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "MsapWifiManager : Exception while starting MSAP  Wifi Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gasReq(IILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/net/wifi/IMsapWifiManager;->gasReq(IILjava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "gasReq - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while gasReq"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while gasReq"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBss(Ljava/lang/String;)Landroid/net/wifi/MsapBssInfo;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/IMsapWifiManager;->getBss(Ljava/lang/String;)Landroid/net/wifi/MsapBssInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "getBss - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while getBss"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while getBss"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGasResponse()[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IMsapWifiManager;->getGasResponse()[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "getGasResponse - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while getGasResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while getGasResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyGasResponse(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IMsapWifiManager;->notifyGasResponse(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "notifyGasResponse - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "Exception while notify GasResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyVenueServerAdded(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IMsapWifiManager;->notifyVenueServerAdded(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "notifyVenueServerAdded - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "Exception while notify VenueServerAdded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyVenueServerDeleted(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IMsapWifiManager;->notifyVenueServerDeleted(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "notifyVenueServerDeleted - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "Exception while notify VenueServerDeleted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetMsap()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IMsapWifiManager;->resetMsap()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "resetMsap - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while resetMsap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while resetMsap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendVenueAddedCacheInfo()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IMsapWifiManager;->sendVenueAddedCacheInfo()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "sendVenueAddedCacheInfo - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "RemoteException while sendVenueAddedCacheInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
