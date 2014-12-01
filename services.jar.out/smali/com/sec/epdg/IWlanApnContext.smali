.class public Lcom/sec/epdg/IWlanApnContext;
.super Ljava/lang/Object;
.source "IWlanApnContext.java"


# static fields
.field private static final DBG:Z = true

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

.field private mIwlanApnName:Ljava/lang/String;

.field private mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;

.field private final mIwlanState:Lcom/sec/epdg/IWlanState;

.field private mReqIpv4addr:Ljava/lang/String;

.field private mReqIpv6addr:Ljava/lang/String;

.field private mRilCid:I

.field private mTCRulesStatus:Z

.field private mVirtualAdapaterName:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[IWLANAPNCONTEXT]"

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/epdg/IWlanApnContext;->mTCRulesStatus:Z

    new-instance v0, Lcom/sec/epdg/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/IWlanState;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/IWlanState;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IWlanApnContext;->setmRilCid(I)V

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    return-void
.end method

.method public static getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;
    .locals 1

    new-instance v0, Lcom/sec/epdg/IWlanApnContext;

    invoke-direct {v0, p0}, Lcom/sec/epdg/IWlanApnContext;-><init>(I)V

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[IWLANAPNCONTEXT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IwlanContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanApnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v5, "[IWLANAPNCONTEXT]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " edpgApnName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " epdgApnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IWlanApnSetting;

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    :cond_3
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IwlanContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getIWlanApnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanApnName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIWlanState()Lcom/sec/epdg/IWlanState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/IWlanState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTCRulesStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/IWlanApnContext;->mTCRulesStatus:Z

    return v0
.end method

.method public getmReqIpv4addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv4addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmReqIpv6addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv6addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRilCid()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnContext;->mRilCid:I

    return v0
.end method

.method public resetReqIpAddress()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "[IWLANAPNCONTEXT]"

    const-string/jumbo v1, "resetReqIpAddress()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv4addr:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv6addr:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "[IWLANAPNCONTEXT]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Ipv4Addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Ipv6Addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p2, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv4addr:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv6addr:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setState(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState() previous state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IWlanApnContext;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnContext;->getmRilCid()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/EpdgRilSharedData;->setIWlanApnState(II)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState() Current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IWlanApnContext;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTCRulesStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/epdg/IWlanApnContext;->mTCRulesStatus:Z

    return-void
.end method

.method public setmReqIpv4addr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv4addr:Ljava/lang/String;

    return-void
.end method

.method public setmReqIpv6addr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv6addr:Ljava/lang/String;

    return-void
.end method

.method public setmRilCid(I)V
    .locals 0

    iput p1, p0, Lcom/sec/epdg/IWlanApnContext;->mRilCid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mIwlanName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanApnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIwlanSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
