.class public Lcom/samsung/android/healthcover/HealthCoverManager;
.super Ljava/lang/Object;
.source "HealthCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;
    }
.end annotation


# static fields
.field private static final HEALTHCOVER_SERVICE:Ljava/lang/String; = "healthcover"

.field private static final TAG:Ljava/lang/String; = "HealthCoverManager"


# instance fields
.field private mHealthcoverService:Lcom/samsung/android/healthcover/IHealthCoverService;

.field private mMainLooper:Landroid/os/Looper;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    const-string v0, "healthcover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/healthcover/IHealthCoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/healthcover/IHealthCoverService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mHealthcoverService:Lcom/samsung/android/healthcover/IHealthCoverService;

    iput-object p1, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/healthcover/IHealthCoverService;)V
    .locals 2
    .param p1    # Lcom/samsung/android/healthcover/IHealthCoverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mMainLooper:Landroid/os/Looper;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mHealthcoverService:Lcom/samsung/android/healthcover/IHealthCoverService;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/healthcover/HealthCoverManager;)Landroid/os/Looper;
    .locals 1
    .param p0    # Lcom/samsung/android/healthcover/HealthCoverManager;

    iget-object v0, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static getHealthCoverManager()Lcom/samsung/android/healthcover/HealthCoverManager;
    .locals 5

    const-string v3, "healthcover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "HealthCoverManager"

    const-string v4, "Fail binding the service. HEALTHCOVER_SERVICE may not be running properly."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/healthcover/IHealthCoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/healthcover/IHealthCoverService;

    move-result-object v2

    new-instance v1, Lcom/samsung/android/healthcover/HealthCoverManager;

    invoke-direct {v1, v2}, Lcom/samsung/android/healthcover/HealthCoverManager;-><init>(Lcom/samsung/android/healthcover/IHealthCoverService;)V

    const-string v3, "HealthCoverManager"

    const-string v4, "A new instance of HealthCoverManager is created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getHealthCoverState()Z
    .locals 3

    :try_start_0
    const-string v1, "HealthCoverManager"

    const-string v2, "getHealthCoverState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mHealthcoverService:Lcom/samsung/android/healthcover/IHealthCoverService;

    invoke-interface {v1}, Lcom/samsung/android/healthcover/IHealthCoverService;->getHealthCoverState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "HealthCoverManager"

    const-string v2, "RemoteException in getHealthCoverState: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/healthcover/HealthCoverListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/healthcover/HealthCoverListener;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/healthcover/HealthCoverManager;->registerListener(Lcom/samsung/android/healthcover/HealthCoverListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/healthcover/HealthCoverListener;Landroid/os/Handler;)V
    .locals 11
    .param p1    # Lcom/samsung/android/healthcover/HealthCoverListener;
    .param p2    # Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_1

    iget-object v7, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->getListener()Lcom/samsung/android/healthcover/HealthCoverListener;

    move-result-object v7

    if-ne v7, p1, :cond_0

    const/4 v0, 0x1

    const-string v7, "HealthCoverManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  . : fail. already registered / listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    monitor-exit v8

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-nez v4, :cond_4

    const-string v7, "HealthCoverManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conecting listener : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;-><init>(Lcom/samsung/android/healthcover/HealthCoverManager;Lcom/samsung/android/healthcover/HealthCoverListener;Landroid/os/Handler;)V

    move-object v4, v5

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v7, "HealthCoverManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "register listener : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mHealthcoverService:Lcom/samsung/android/healthcover/IHealthCoverService;

    invoke-interface {v7, v4}, Lcom/samsung/android/healthcover/IHealthCoverService;->registerCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    const-string v7, "HealthCoverManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  . : success. listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public unregisterListener(Lcom/samsung/android/healthcover/HealthCoverListener;)V
    .locals 8
    .param p1    # Lcom/samsung/android/healthcover/HealthCoverListener;

    iget-object v5, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    const-string v4, "HealthCoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@ member "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->getListener()Lcom/samsung/android/healthcover/HealthCoverListener;

    move-result-object v4

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mHealthcoverService:Lcom/samsung/android/healthcover/IHealthCoverService;

    invoke-interface {v4, v2}, Lcom/samsung/android/healthcover/IHealthCoverService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    :try_start_2
    const-string v4, "HealthCoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterListener : / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public writeData([B)V
    .locals 4
    .param p1    # [B

    iget-object v2, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    const-string v1, "HealthCoverManager"

    const-string/jumbo v3, "write data"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager;->mHealthcoverService:Lcom/samsung/android/healthcover/IHealthCoverService;

    invoke-interface {v1, p1}, Lcom/samsung/android/healthcover/IHealthCoverService;->WriteData([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    const-string v1, "HealthCoverManager"

    const-string v3, "  . : success. writeData "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
