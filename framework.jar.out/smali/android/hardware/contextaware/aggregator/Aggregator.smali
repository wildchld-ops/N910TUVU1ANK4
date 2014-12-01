.class public abstract Landroid/hardware/contextaware/aggregator/Aggregator;
.super Landroid/hardware/contextaware/manager/ContextProvider;
.source "Aggregator.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextObserver;
.implements Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;


# instance fields
.field private mAggregatorFaultDetectionResult:Z

.field private final mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Landroid/hardware/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    iput-object p4, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final checkFaultDetectionResult()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    return v0
.end method

.method protected final clearExtension()V
    .locals 3

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    goto :goto_0
.end method

.method protected final disableExtension()V
    .locals 3

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->disable()V

    goto :goto_0
.end method

.method protected final disableForStop(Z)V
    .locals 0

    return-void
.end method

.method protected final enableExtension()V
    .locals 3

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->enable()V

    goto :goto_0
.end method

.method protected final enableForStart(Z)V
    .locals 0

    return-void
.end method

.method protected final getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    sget-object v2, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_1
    return-object v2
.end method

.method protected final getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method protected final initialize()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeAggregator()V

    return-void
.end method

.method protected initializeAggregator()V
    .locals 0

    return-void
.end method

.method protected final initializeFaultDetectionResult()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    return-void
.end method

.method protected final notifyApStatus()V
    .locals 4

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getAPStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->updateAPStatus(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->updateApPowerStatusForPreparedCollection()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->setAPStatus(I)V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->pause()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->pause()V

    return-void
.end method

.method protected final registerObserver()V
    .locals 3

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->registerCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->resume()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->resume()V

    return-void
.end method

.method public final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->registerObserver()V

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method public final stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method protected final terminate()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->unregisterObserver()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->terminateAggregator()V

    return-void
.end method

.method protected terminateAggregator()V
    .locals 0

    return-void
.end method

.method protected final unregisterObserver()V
    .locals 3

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->unregisterCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateApSleep()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    return-void
.end method

.method protected updateApWakeup()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    return-void
.end method

.method public final updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CheckResult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : SubCollection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    const-string v2, "Service"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") process result is failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
