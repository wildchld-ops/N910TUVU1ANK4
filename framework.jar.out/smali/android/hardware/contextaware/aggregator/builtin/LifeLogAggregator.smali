.class public Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LifeLogAggregator.java"


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clearAccordingToRequest()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LoggingType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LoggingBundle"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x1c

    if-eq p1, v3, :cond_0

    const/16 v3, 0x1d

    if-eq p1, v3, :cond_0

    const/16 v3, 0x1e

    if-eq p1, v3, :cond_0

    const/16 v3, 0x1f

    if-ne p1, v3, :cond_3

    :cond_0
    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/16 v3, 0x20

    if-ne p1, v3, :cond_1

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v3, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_3

    sget-object v3, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateContext:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "StayingAreaCount"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v3, "Sub-collection object is null"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    aget-object v5, v0, v7

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v6

    aget-object v5, v0, v6

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    aget-object v5, v0, v8

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v9

    aget-object v5, v0, v9

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v10

    aget-object v5, v0, v10

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v0, v4

    const/4 v5, 0x6

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    const/4 v5, 0x7

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    :cond_5
    const-string v3, "MovingCount"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v3, "Sub-collection object is null"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v0, v4

    const/16 v5, 0x8

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v0, v4

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v0, v4

    const/16 v5, 0xa

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v0, v4

    const/16 v5, 0xb

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v4, v0, v4

    const/16 v5, 0xc

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    goto/16 :goto_0

    :cond_7
    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4, v9}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v3, "Sub-collection object is null"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    aget-object v5, v0, v7

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v6

    aget-object v5, v0, v6

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    aget-object v5, v0, v8

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v9

    aget-object v5, v0, v9

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v10

    aget-object v5, v0, v10

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    goto/16 :goto_0
.end method
