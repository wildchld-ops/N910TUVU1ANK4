.class Landroid/hardware/contextaware/manager/ContextTimeOutCheck;
.super Ljava/lang/Object;
.source "ContextTimeOutCheck.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextTimeOutCheck;


# static fields
.field protected static final DEFAULT_TIME_OUT:I = 0x5


# instance fields
.field private mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

.field private mTimeOutCheckManager:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutHandler:Ljava/lang/Thread;

.field private mTimeOutOccurrence:Z


# direct methods
.method protected constructor <init>(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .locals 0
    .param p1    # Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    return-void
.end method


# virtual methods
.method protected clearTimeOutCheckService()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    iput-object v1, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    :cond_0
    return-void
.end method

.method public final getHandler()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    return-object v0
.end method

.method public final getService()Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    return-object v0
.end method

.method public final isTimeOut()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutOccurrence:Z

    return v0
.end method

.method public final run()V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->clearTimeOutCheckService()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    if-nez v0, :cond_0

    const-string v0, "TimeOutCheckObserver is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final setTimeOutOccurence(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/hardware/contextaware/manager/ContextTimeOutCheck;->mTimeOutOccurrence:Z

    return-void
.end method
