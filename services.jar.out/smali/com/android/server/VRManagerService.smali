.class public Lcom/android/server/VRManagerService;
.super Lcom/android/internal/app/IVRManagerService$Stub;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VRManagerService$VRConnection;,
        Lcom/android/server/VRManagerService$VRServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_VR_SYSTEM_SERVICE:Ljava/lang/String; = "com.samsung.android.hmt.system"

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VRManagerService"

.field private static final VR_UNDOCK_TIMEOUT:I = 0xea60


# instance fields
.field private mAfControl:Landroid/sec/performance/AffinityControl;

.field private mConnection:Lcom/android/server/VRManagerService$VRConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/app/IVRManagerService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    new-instance v0, Lcom/android/server/VRManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$1;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/VRManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$2;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService Constructor ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/server/VRManagerService;

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRConnection;
    .locals 1
    .param p0    # Lcom/android/server/VRManagerService;

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$VRConnection;)Lcom/android/server/VRManagerService$VRConnection;
    .locals 0
    .param p0    # Lcom/android/server/VRManagerService;
    .param p1    # Lcom/android/server/VRManagerService$VRConnection;

    iput-object p1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/VRManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/server/VRManagerService;

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bind(Landroid/content/Context;)Lcom/android/server/VRManagerService$VRConnection;
    .locals 9
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "VRManagerService"

    const-string v1, "bind()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VRManagerService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/VRManagerService$VRServiceConnection;

    invoke-direct {v3, p0, v5}, Lcom/android/server/VRManagerService$VRServiceConnection;-><init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.android.hmt.system"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v8, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/server/VRManagerService$VRServiceConnection;->mBound:Z

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v0, v3, Lcom/android/server/VRManagerService$VRServiceConnection;->mBound:Z

    if-nez v0, :cond_0

    const-string v0, "VRManagerService"

    const-string v1, "Unable to bind VRSystemService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Lcom/android/server/VRManagerService$VRConnection;

    iget-object v1, v3, Lcom/android/server/VRManagerService$VRServiceConnection;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/IVRManagerService;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VRManagerService$VRConnection;-><init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;Lcom/android/server/VRManagerService$1;)V

    move-object v5, v0

    goto :goto_0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private getService()Lcom/android/internal/app/IVRManagerService;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRConnection;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRConnection;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    :cond_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/VRManagerService;->bind(Landroid/content/Context;)Lcom/android/server/VRManagerService$VRConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    :cond_1
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-nez v1, :cond_2

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRConnection;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private scheduleThreadFIFO(Ljava/lang/String;III)Z
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const-string/jumbo v3, "scheduleThreadFIFO"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---- elevateProcessThread \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requestPriority(pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    :try_start_0
    invoke-static {p3, v3}, Landroid/os/Process;->setThreadGroup(II)V

    const/4 v3, 0x1

    invoke-static {p3, v3, p4}, Landroid/os/Process;->setThreadScheduler(III)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-nez v3, :cond_0

    new-instance v3, Landroid/sec/performance/AffinityControl;

    invoke-direct {v3}, Landroid/sec/performance/AffinityControl;-><init>()V

    iput-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    :cond_0
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-eqz v3, :cond_1

    const-string v3, "exynos5"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    invoke-virtual {v3, p3, v0}, Landroid/sec/performance/AffinityControl;->SetAffinity(I[I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "VRManagerService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private scheduleThreadOTHER(Ljava/lang/String;III)Z
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const-string/jumbo v2, "scheduleThreadOTHER"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- demoteProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    const/4 v2, 0x0

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 4

    const-string v3, "GetPowerLevelState"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v4, 0x0

    const-string v3, "SetVrClocks"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump VRManagerService(system_process) from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "VR MANAGER (dumpsys vr)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v3}, Lcom/android/server/VRManagerService$VRConnection;->getVRServiceConnection()Lcom/android/server/VRManagerService$VRServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.mBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->mBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.mConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.q.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.mBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v3, "  vrServiceConnection.mBinder=null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "  mConnection.vrServiceConnection=null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "  mConnection=null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->enforceCallingPermission(IILjava/lang/String;)V
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

.method public enforceCallingPermission(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const-string v3, "getOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;

    const-string v3, "getSystemOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

    const-string v3, "getVRBright"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

    const-string v3, "getVRColorTemperature"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

    const-string v3, "isConnected"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

.method public isDevelopermode()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDevelopermode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 4

    const-string v3, "isVRComfortableViewEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

    const-string v3, "isVRDarkAdaptationEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

    const-string v3, "isVRLowPersistenceEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

    const-string v3, "isVRMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;

    const-string/jumbo v3, "relFreq"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;

    const-string/jumbo v2, "releaseCPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;

    const-string/jumbo v2, "releaseGPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

    const-string/jumbo v3, "return2EnableFreqLev"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;
    .param p2    # [I
    .param p3    # I

    const/4 v4, 0x0

    const-string/jumbo v3, "setCPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const-string/jumbo v3, "setGPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string/jumbo v2, "setOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string/jumbo v2, "setSystemOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v0, 0x0

    const-string/jumbo v1, "setThreadSchedFifo"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    if-lez p4, :cond_1

    const/4 v1, 0x3

    if-gt p4, v1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VRManagerService;->scheduleThreadFIFO(Ljava/lang/String;III)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/VRManagerService;->scheduleThreadOTHER(Ljava/lang/String;III)Z

    move-result v0

    goto :goto_0
.end method

.method public setVRBright(I)V
    .locals 3
    .param p1    # I

    const-string/jumbo v2, "setVRBright"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # I

    const-string/jumbo v2, "setVRColorTemperature"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Z

    const-string/jumbo v2, "setVRComfortableView"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Z

    const-string/jumbo v2, "setVRDarkAdaptation"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Z

    const-string/jumbo v2, "setVRLowPersistence"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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
    .param p1    # Z

    const-string/jumbo v2, "setVRMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

.method public setVRPerformanceMode(Z)V
    .locals 3
    .param p1    # Z

    const-string/jumbo v2, "setVRPerformanceMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRPerformanceMode(Z)V
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
    .param p1    # Ljava/lang/String;
    .param p2    # F
    .param p3    # Z

    const-string/jumbo v3, "setVideoMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

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

.method public systemReady()V
    .locals 3

    const-string v1, "VRManagerService"

    const-string v2, "---- VRManagerService systemReady ----"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
