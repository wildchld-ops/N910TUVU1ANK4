.class public Landroid/os/dar/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# static fields
.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_BOOTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDP.manager"

.field private static _instance:Landroid/os/dar/SdpManager;


# instance fields
.field mService:Landroid/os/dar/ISdpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    return-void
.end method

.method public static getSdpManager()Landroid/os/dar/SdpManager;
    .locals 1

    sget-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/dar/SdpManager;

    invoke-direct {v0}, Landroid/os/dar/SdpManager;-><init>()V

    sput-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    :cond_0
    sget-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    return-object v0
.end method

.method private getSdpService()Landroid/os/dar/ISdpManager;
    .locals 1

    iget-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/dar/ISdpManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/dar/ISdpManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    :cond_0
    iget-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    return-object v0
.end method


# virtual methods
.method public addColumn(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->addColumn(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSensitiveDBInfo(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->getSensitiveDBInfo(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSensitiveFileInfo(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->getSensitiveFileInfo(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState(I)I
    .locals 3

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->getState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isSDPEnabled(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->isSDPEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call isSDPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSensitiveColumn(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->isSensitiveColumn(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBoot(I)Z
    .locals 3

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->onBoot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onBoot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/os/dar/ISdpManager;->onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onChangePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDeviceLocked(I)Z
    .locals 3

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->onDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onDeviceLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDeviceUnlocked(ILjava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->onDeviceUnlocked(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onDeviceUnlocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUserAdded(ILjava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->onUserAdded(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onUserAdded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUserRemoved(I)Z
    .locals 3

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->onUserRemoved(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onUserRemoved"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSensitiveDBInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/dar/ISdpManager;->setSensitiveDBInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    const-string v0, "SDP.manager"

    const-string v1, "Failed to call getState"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setSensitiveFileInfo(IILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/os/dar/ISdpManager;->setSensitiveFileInfo(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
