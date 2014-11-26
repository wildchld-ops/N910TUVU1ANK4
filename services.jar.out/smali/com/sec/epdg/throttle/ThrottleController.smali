.class public Lcom/sec/epdg/throttle/ThrottleController;
.super Ljava/lang/Object;
.source "ThrottleController.java"


# static fields
.field private static INSTANCE:Lcom/sec/epdg/throttle/ThrottleController; = null

.field private static final TAG:Ljava/lang/String; = "ThrottleController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRetryEnabled:Z

.field private mIsThrottleEnabled:Z

.field private mThrottleManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/throttle/ThrottleManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    iput-boolean p3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    return-void
.end method

.method private addThrottleManager(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    new-instance v1, Lcom/sec/epdg/throttle/ThrottleManager;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    iget-boolean v4, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleManager;-><init>(Landroid/content/Context;ZZ)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # Z

    const-class v1, Lcom/sec/epdg/throttle/ThrottleController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    if-nez v0, :cond_0

    const-string v0, "ThrottleController"

    const-string v2, "Created ThrottleController instance"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throttle enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , Retry enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/throttle/ThrottleController;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleController;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/throttle/ThrottleController;
    .locals 3

    const-class v1, Lcom/sec/epdg/throttle/ThrottleController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    if-nez v0, :cond_0

    const-string v0, "ThrottleController"

    const-string v2, "ThrottleController instance null.Call createInstance() before calling getInstance()"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "ThrottleController instance not found."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private handleWifiConnected(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const-string v2, "ThrottleController"

    const-string v3, "handleWifiConnected. Resetting limited retry for all throttle managers"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->onWifiConnected(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleWifiDisconnected()V
    .locals 5

    const-string v3, "ThrottleController"

    const-string v4, "handleWifiDisconnected."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/throttle/ThrottleManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/sec/epdg/throttle/ThrottleManager;->onWifiDisconnected(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isEpdgNotAvailableRequired(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0xc

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public declared-synchronized getThrottleCount(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThrottleCount, apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager;->getThrottleTimerCount()I

    move-result v0

    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThrottleCount, apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleWifiStatusChanged(ZLjava/lang/String;)V
    .locals 1
    .param p1    # Z
    .param p2    # Ljava/lang/String;

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiConnected(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiDisconnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isThrottleTimerRunning(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isThrottleTimerRunning, apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->isRetryThrottled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isThrottleTimerRunning: apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onSettingUpdated(ZZ)V
    .locals 3
    .param p1    # Z
    .param p2    # Z

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    const-string v0, "ThrottleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings updated. Throttle enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Retry enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetThrottleState(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v0, "ThrottleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetThrottleState, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->resetThrottlingTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/sec/epdg/IWlanError;

    monitor-enter p0

    :try_start_0
    const-string v0, "ThrottleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThrottleState, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->sendEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->startTimerOrIncrementCounter(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
