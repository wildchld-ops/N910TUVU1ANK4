.class public Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;
.super Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;
.source "TemperatureHumidityAggregator.java"


# instance fields
.field private mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

.field private mSleepTime:J

.field private mWakeupTime:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 8
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

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    iput-wide v6, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    iput-wide v6, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    return-void
.end method


# virtual methods
.method protected final checkCompensationData([D)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final clear()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clearAccordingToRequest()V

    return-void
.end method

.method protected final compensateForRawData([[D)[D
    .locals 23

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_1
    const/4 v2, 0x1

    new-array v7, v2, [D

    const/4 v2, 0x1

    new-array v8, v2, [D

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v0, v2

    move/from16 v17, v0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    array-length v0, v2

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getLoggingStatus()I

    move-result v20

    const-wide/16 v13, 0x0

    const-wide/16 v18, 0x0

    if-eqz v17, :cond_2

    if-nez v16, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_5

    mul-int/lit8 v15, v17, 0x2

    :goto_1
    new-array v11, v15, [D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleepTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wakeupTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    sub-long/2addr v2, v4

    div-int/lit8 v4, v15, 0x2

    int-to-long v4, v4

    div-long v13, v2, v4

    const/4 v2, 0x2

    if-le v15, v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v21, v0

    sub-long v4, v4, v21

    div-int/lit8 v6, v15, 0x2

    add-int/lit8 v6, v6, -0x1

    int-to-long v0, v6

    move-wide/from16 v21, v0

    mul-long v21, v21, v13

    sub-long v4, v4, v21

    const-wide/16 v21, 0x2

    div-long v4, v4, v21

    add-long v18, v2, v4

    :goto_2
    const/4 v12, 0x0

    :goto_3
    div-int/lit8 v2, v15, 0x2

    if-ge v12, v2, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-virtual {v2, v7, v8}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getLastCompensatedData([D[D)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastCompensatedData : compensatedTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v7, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", compensatedHumid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v8, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_4
    :goto_4
    const/4 v2, 0x0

    aget-wide v2, v7, v2

    aput-wide v2, v11, v12

    add-int v2, v12, v17

    const/4 v3, 0x0

    aget-wide v3, v8, v3

    aput-wide v3, v11, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    mul-int/lit8 v15, v16, 0x2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v21, v0

    sub-long v4, v4, v21

    const-wide/16 v21, 0x2

    div-long v4, v4, v21

    add-long v18, v2, v4

    goto :goto_2

    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    int-to-long v2, v12

    mul-long/2addr v2, v13

    add-long v9, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    aget-wide v3, v3, v12

    const/4 v5, 0x1

    aget-object v5, p1, v5

    aget-wide v5, v5, v12

    invoke-virtual/range {v2 .. v10}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getCompensatedData(DD[D[DJ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawData : rawTempData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    aget-wide v3, v3, v12

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rawHumidData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-wide v3, v3, v12

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", compensatedTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v7, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  compensatedHumid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v8, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    goto/16 :goto_0
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->checkFaultDetectionResult()Z

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

.method protected final getRawSensorValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final initializeAggregator()V
    .locals 1

    new-instance v0, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-direct {v0}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final notifyCompensationData([D)V
    .locals 7

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    array-length v5, p1

    div-int/lit8 v3, v5, 0x2

    new-array v1, v3, [D

    new-array v0, v3, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v5, p1, v2

    aput-wide v5, v1, v2

    add-int v5, v2, v3

    aget-wide v5, p1, v5

    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver()V

    return-void
.end method

.method protected final terminateAggregator()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final updateApSleep()V
    .locals 6

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeStampForApStatus()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v2, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateApSleep()V

    return-void
.end method
