.class public Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "ActivityLocationLoggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$1;,
        Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;,
        Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContext.CaeProvider.ActivityLocationLoggingImpl"


# instance fields
.field private final MAXIMUM_WAITING_TIME:I

.field private mAreaRadius:I

.field private final mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

.field private mLppResolution:I

.field private mStayingRadius:I

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/hardware/scontext/provider/EventListener;

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    const v0, 0xea60

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->MAXIMUM_WAITING_TIME:I

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStopPeriod:I

    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mWaitPeriod:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStayingRadius:I

    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mAreaRadius:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mLppResolution:I

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Landroid/hardware/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;)Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    .locals 1
    .param p0    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;)Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    .locals 0
    .param p0    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;
    .param p1    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    return-object p1
.end method


# virtual methods
.method public add()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->add()V

    goto :goto_0
.end method

.method public handleDiedBinder()V
    .locals 4

    const-string v1, "SContext.CaeProvider.ActivityLocationLoggingImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDiedBinder() : mExceptionMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 3

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    const-string v0, "SContext.CaeProvider.ActivityLocationLoggingImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() : mExceptionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public remove()V
    .locals 0

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->remove()V

    return-void
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 4
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const-string v0, "activity_location_logging_stop_period"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "activity_location_logging_stop_period"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStopPeriod:I

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v2, 0x1c

    iget v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStopPeriod:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_0
    const-string v0, "activity_location_logging_wait_period"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "activity_location_logging_wait_period"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mWaitPeriod:I

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v2, 0x1d

    iget v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mWaitPeriod:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_1
    const-string v0, "activity_location_logging_statying radius"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "activity_location_logging_statying radius"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStayingRadius:I

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v2, 0x1e

    iget v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStayingRadius:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_2
    const-string v0, "activity_location_logging_area_radius"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "activity_location_logging_area_radius"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mAreaRadius:I

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v2, 0x1f

    iget v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mAreaRadius:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_3
    const-string v0, "activity_location_logging_lpp_resolution"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "activity_location_logging_lpp_resolution"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mLppResolution:I

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v2, 0x20

    iget v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mLppResolution:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_4
    return-void
.end method
