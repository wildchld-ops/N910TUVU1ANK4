.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;


# instance fields
.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunDownStepCount:J

.field private accumulativeRunStepCount:J

.field private accumulativeRunUpStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkDownStepCount:J

.field private accumulativeWalkStepCount:J

.field private accumulativeWalkUpStepCount:J

.field private final pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-direct {v0, p2, p3, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->requestScaleFactorUpdate()[I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 8

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "================= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-ge v6, v7, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WalkStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WalkStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RunStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RunStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UpDownStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UpDownStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TotalStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TotalStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DistanceDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "StepStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CalorieDiff"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Calorie"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "WalkingFrequency"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WalkUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "WalkUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WalkDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "WalkDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RunUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RunUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RunDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RunDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "LoggingCount"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DistanceDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CalorieDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "WalkStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "RunStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WalkUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "WalkDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "RunUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RunDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TotalStepCountDiffArray"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xb

    aget-object v2, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xf

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x10

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x11

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x12

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x13

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x14

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x15

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x16

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    :cond_0
    return-void
.end method

.method public onUpdateScaleFactor([I)V
    .locals 6

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    const/16 v2, 0x17

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public parse([BI)I
    .locals 65

    move/from16 v49, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse start:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v49

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v35

    add-int/lit8 v50, v49, 0x1

    aget-byte v26, p1, v49

    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0xe

    if-gez v2, :cond_1

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    goto :goto_0

    :cond_1
    and-int/lit8 v26, v26, 0x7f

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v26, p1, v50

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x3

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v26, p1, v49

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x7

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x8

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4059000000000000L

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4059000000000000L

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x9

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-double v9, v2

    const-wide/high16 v11, 0x4024000000000000L

    div-double v18, v9, v11

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xa

    aget-object v9, v35, v9

    move-wide/from16 v0, v18

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v26, p1, v49

    move/from16 v47, v26

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xb

    aget-object v9, v35, v9

    move/from16 v0, v47

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xc

    aget-object v9, v35, v9

    add-int/lit8 v49, v50, 0x1

    aget-byte v10, p1, v50

    invoke-static {v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4059000000000000L

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xd

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v26, p1, v49

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xe

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v26, p1, v50

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xf

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x10

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v26, p1, v49

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x11

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x12

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v26, p1, v50

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x13

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x14

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v26, p1, v49

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x15

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x16

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v49, v50

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v9 .. v21}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->onStepInfoUpdate(JJJDDJ)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse end:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move/from16 v2, v49

    goto/16 :goto_0

    :cond_2
    move/from16 v0, v26

    and-int/lit16 v2, v0, 0xc0

    shr-int/lit8 v2, v2, 0x6

    const/4 v9, 0x3

    if-ne v2, v9, :cond_7

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v9, 0x0

    const-string v10, "GMT"

    invoke-direct {v2, v9, v10}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v22

    const/16 v2, 0xb

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v30

    const/16 v2, 0xc

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v34

    const/16 v2, 0xd

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v45

    const/16 v2, 0xe

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v33

    move/from16 v0, v30

    mul-int/lit16 v2, v0, 0xe10

    mul-int/lit8 v9, v34, 0x3c

    add-int/2addr v2, v9

    add-int v2, v2, v45

    mul-int/lit16 v2, v2, 0x3e8

    add-int v2, v2, v33

    int-to-long v3, v2

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    add-int/lit8 v49, v50, 0x1

    aget-byte v32, p1, v50

    if-gtz v32, :cond_4

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_4
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v48, v0

    move/from16 v0, v32

    new-array v0, v0, [D

    move-object/from16 v29, v0

    move/from16 v0, v32

    new-array v0, v0, [D

    move-object/from16 v25, v0

    move/from16 v0, v32

    new-array v0, v0, [D

    move-object/from16 v46, v0

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v61, v0

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v41, v0

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v64, v0

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v58, v0

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v44, v0

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v38, v0

    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v53, v0

    const-wide/16 v27, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v36, 0x0

    const/16 v47, -0x1

    const/16 v31, 0x0

    move/from16 v50, v49

    :goto_2
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0x14

    if-gez v2, :cond_5

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v7, v2

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v9

    aput-wide v9, v48, v31

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    move/from16 v0, v26

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059000000000000L

    div-double/2addr v9, v11

    aput-wide v9, v29, v31

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    move/from16 v0, v26

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059000000000000L

    div-double/2addr v9, v11

    aput-wide v9, v25, v31

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-long v9, v2

    aput-wide v9, v61, v31

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v41, v31

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-long v9, v2

    aput-wide v9, v64, v31

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-long v9, v2

    aput-wide v9, v58, v31

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v44, v31

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v38, v31

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-double v9, v2

    const-wide/high16 v11, 0x4024000000000000L

    div-double/2addr v9, v11

    aput-wide v9, v46, v31

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v53, v31

    aget-wide v9, v29, v31

    add-double v27, v27, v9

    aget-wide v9, v25, v31

    add-double v23, v23, v9

    aget-wide v9, v46, v31

    add-double v18, v18, v9

    aget-wide v9, v53, v31

    add-long v51, v51, v9

    aget-wide v9, v61, v31

    add-long v59, v59, v9

    aget-wide v9, v41, v31

    add-long v39, v39, v9

    aget-wide v9, v64, v31

    add-long v62, v62, v9

    aget-wide v9, v58, v31

    add-long v56, v56, v9

    aget-wide v9, v44, v31

    add-long v42, v42, v9

    aget-wide v9, v38, v31

    add-long v36, v36, v9

    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    :cond_6
    add-long v9, v62, v56

    add-long v9, v9, v42

    add-long v54, v9, v36

    move/from16 v0, v32

    int-to-double v9, v0

    div-double v18, v18, v9

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v35, v9

    move-wide/from16 v0, v59

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    add-long v9, v9, v59

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v35, v9

    move-wide/from16 v0, v39

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    add-long v9, v9, v39

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x3

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v35, v9

    move-wide/from16 v0, v54

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    add-long v9, v9, v54

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v35, v9

    move-wide/from16 v0, v51

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    add-long v9, v9, v51

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x7

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x8

    aget-object v9, v35, v9

    move-wide/from16 v0, v27

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    add-double v9, v9, v27

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x9

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xa

    aget-object v9, v35, v9

    move-wide/from16 v0, v18

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xb

    aget-object v9, v35, v9

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xc

    aget-object v9, v35, v9

    move-wide/from16 v0, v23

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    add-double v9, v9, v23

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xd

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xe

    aget-object v9, v35, v9

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xf

    aget-object v9, v35, v9

    move-wide/from16 v0, v62

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    add-long v9, v9, v62

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x10

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x11

    aget-object v9, v35, v9

    move-wide/from16 v0, v56

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    add-long v9, v9, v56

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x12

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x13

    aget-object v9, v35, v9

    move-wide/from16 v0, v42

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    add-long v9, v9, v42

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x14

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x15

    aget-object v9, v35, v9

    move-wide/from16 v0, v36

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    add-long v9, v9, v36

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x16

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x17

    aget-object v9, v35, v9

    move/from16 v0, v32

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x18

    aget-object v9, v35, v9

    move-object/from16 v0, v48

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x19

    aget-object v9, v35, v9

    move-object/from16 v0, v29

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1a

    aget-object v9, v35, v9

    move-object/from16 v0, v25

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1b

    aget-object v9, v35, v9

    move-object/from16 v0, v46

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1c

    aget-object v9, v35, v9

    move-object/from16 v0, v61

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1d

    aget-object v9, v35, v9

    move-object/from16 v0, v41

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1e

    aget-object v9, v35, v9

    move-object/from16 v0, v64

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1f

    aget-object v9, v35, v9

    move-object/from16 v0, v58

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x20

    aget-object v9, v35, v9

    move-object/from16 v0, v44

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x21

    aget-object v9, v35, v9

    move-object/from16 v0, v38

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x22

    aget-object v9, v35, v9

    move-object/from16 v0, v53

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    move/from16 v49, v50

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0x20

    if-gez v2, :cond_8

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x3

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x7

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x8

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4059000000000000L

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4059000000000000L

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x9

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-double v9, v2

    const-wide/high16 v11, 0x4024000000000000L

    div-double v18, v9, v11

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xa

    aget-object v9, v35, v9

    move-wide/from16 v0, v18

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v26, p1, v50

    move/from16 v47, v26

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xb

    aget-object v9, v35, v9

    move/from16 v0, v47

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xc

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4024000000000000L

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xd

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v26, p1, v49

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xe

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xf

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x10

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x11

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x12

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v49, v50, 0x1

    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x13

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x14

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v50, v49, 0x1

    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x15

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x16

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v49, v50

    goto/16 :goto_1
.end method

.method public requestToUpdate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    aput-byte v3, v0, v2

    aput-byte v2, v0, v3

    const/16 v1, -0x48

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCmdToSensorHub(BB[B)V

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    new-array v1, v6, [B

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    const-string v4, "Height"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->setUserProfileHeight(D)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    const/16 v4, 0x12

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    const-string v4, "Weight"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->setUserProfileWeight(D)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    const/16 v4, 0x13

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    if-ne p1, v4, :cond_2

    const-string v4, "Gender"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserGender(I)V

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->setUserProfileGender(D)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    const/16 v4, 0x14

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto :goto_0

    :cond_2
    const/16 v4, 0x11

    if-ne p1, v4, :cond_3

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivery Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v4, 0x15

    invoke-static {v0, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x3f

    if-ne p1, v4, :cond_7

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exercise mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    if-ne v2, v6, :cond_6

    :cond_4
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-virtual {v4, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->enable(I)V

    :cond_5
    :goto_1
    const-string v4, "Exercise mode = pedoCalibManager end"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v4, 0x17

    const/4 v5, 0x3

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    const-string v4, "sendPropertyValueToSensorHub end"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-ne v2, v7, :cond_5

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-virtual {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->disable()V

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
