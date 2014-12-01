.class public Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# static fields
.field private static final ACCURACY_REQUIREMENT_DEFAULT:I = 0x64


# instance fields
.field private mApdrNoti:Z

.field private mCurAccuracy:F

.field private mCurAltitude:D

.field private mCurLatitude:D

.field private mCurLongitude:D

.field private mCurSysTime:J

.field private mCurTimeStamp:J

.field private mPedestrianStatus:I

.field private mUserWantedAccuracy:I


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

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    return-void
.end method

.method private isFilterInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private notifyLocationContext(JJ[D[FZI)V
    .locals 5

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3, p4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyObserver()V

    return-void
.end method

.method private receiveApdrNoti(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Alert"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_2
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->resume()V

    goto :goto_0
.end method

.method private requestGpsData(JJ)V
    .locals 22

    const/4 v1, 0x3

    new-array v6, v1, [D

    const/4 v1, 0x3

    new-array v7, v1, [F

    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v21, v0

    const/4 v8, 0x1

    const/4 v1, 0x0

    aget v1, v21, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyLocationContext(JJ[D[FZI)V

    const/4 v1, 0x0

    aget-wide v14, v6, v1

    const/4 v1, 0x1

    aget-wide v16, v6, v1

    const/4 v1, 0x2

    aget-wide v18, v6, v1

    const/4 v1, 0x2

    aget v20, v7, v1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v20}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->setCurLocationforHubApdr(JJDDDF)V

    :cond_0
    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private sendSleepModeCmdToSensorHub()V
    .locals 13

    sget-object v9, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v9}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide v9, 0x4042800000000000L

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide/high16 v9, 0x4060000000000000L

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const/high16 v9, 0x41200000

    iput v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const-wide v11, 0x408f400000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v8

    array-length v9, v5

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v1

    add-int/2addr v9, v10

    array-length v10, v0

    add-int/2addr v9, v10

    array-length v10, v8

    add-int v3, v9, v10

    new-array v4, v3, [B

    const/4 v7, 0x0

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v5

    add-int/2addr v7, v9

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v6

    add-int/2addr v7, v9

    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v1

    add-int/2addr v7, v9

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v0

    add-int/2addr v7, v9

    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v8, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendSleepModeCmdToSensorHub([B)V

    goto :goto_0
.end method

.method private setCurLocationforHubApdr(JJDDDF)V
    .locals 0

    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iput-wide p3, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    iput-wide p5, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    iput-wide p7, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    iput-wide p9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    iput p11, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    return-void
.end method

.method private updateApdrData(Landroid/os/Bundle;)V
    .locals 8

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    const-string v6, "DeltaTime"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    const-string v6, "DeltaTime"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    goto :goto_0
.end method

.method private updateRawGpsData(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const-string v4, "SystemTime"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v4, "TimeStamp"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    return-void
.end method

.method private updateRawSatelliteData(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->isScreenOn()Z

    move-result v1

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getAPStatus()I

    move-result v3

    const/16 v4, -0x2e

    if-ne v3, v4, :cond_2

    move v0, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    iget-boolean v3, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->vibrateAlarm(Z)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyApStatus()V

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->sendSleepModeCmdToSensorHub()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRawWpsData(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    return-void
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

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SystemTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Heading"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Valid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PedestrianStatus"

    aput-object v2, v0, v1

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

.method protected final initializeAggregator()V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Wanted Accuracy) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Height) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Weight) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final terminateAggregator()V
    .locals 0

    return-void
.end method

.method protected final updateApSleep()V
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    return-void
.end method

.method protected final updateApWakeup()V
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateApWakeup()V

    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawGpsData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawSatelliteData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawWpsData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateApdrData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->receiveApdrNoti(Landroid/os/Bundle;)V

    goto :goto_0
.end method
