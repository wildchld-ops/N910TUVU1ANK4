.class public Landroid/app/VRManager;
.super Ljava/lang/Object;
.source "VRManager.java"

# interfaces
.implements Landroid/app/IVRManager;


# static fields
.field public static final INTENT_ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final INTENT_ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/app/IVRManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/VRManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/app/IVRManagerService;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    const-string v0, "VRManager"

    const-string/jumbo v1, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IVRManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setVRBright(I)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public vrManagerVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.3.0-2014-04-21"

    return-object v0
.end method

.method public vrOVRVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.3.0-2014-04-21"

    return-object v0
.end method
