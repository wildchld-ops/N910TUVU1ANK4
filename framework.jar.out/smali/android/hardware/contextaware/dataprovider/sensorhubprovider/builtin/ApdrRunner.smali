.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ApdrRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_UP_STEP_COUNT:I = 0x1f4

.field private static final DEFAULT_WAKE_UP_TIME_COUNT:I = 0x258

.field private static final STEP_COUNT_HIGH:I = 0x32

.field private static final STEP_COUNT_LOW:I = 0x1f4

.field private static final STEP_COUNT_MEDIUM:I = 0x12c

.field private static final TIME_COUNT_HIGH:I = 0x3c

.field private static final TIME_COUNT_LOW:I = 0x258

.field private static final TIME_COUNT_MEDIUM:I = 0x78

.field private static final TIME_SYNC_TIMER:I = 0x1c20


# instance fields
.field private mLppResolution:I

.field private mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSyncTime:Landroid/text/format/Time;

.field private mSyncTimeTask:Ljava/lang/Runnable;

.field private mWakeUpStepCount:I

.field private mWakeUpTimeCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x258

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCurTimeToSensorHub()V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendCurTimeToSensorHub()V
    .locals 4

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    const-string v2, "GMT+00:00"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/4 v2, 0x3

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const/4 v2, 0x0

    iget v3, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->second:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Hour"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Minute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Second"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "doe"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TimeDifference"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IncrementEast"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IncrementNorth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "StayingArea"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x0

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x1c

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

.method public final getSyncTime()Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public gpsAvailable()V
    .locals 4

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final gpsBatchStarted()V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 4

    const/4 v3, 0x5

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsUnavailable()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [B

    aput-byte v2, v0, v2

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final locationUpdate(Landroid/location/Location;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L

    mul-double/2addr v13, v15

    double-to-int v6, v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L

    mul-double/2addr v13, v15

    double-to-int v7, v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L

    mul-double/2addr v13, v15

    double-to-int v2, v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    float-to-int v13, v13

    int-to-byte v1, v13

    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Landroid/text/format/Time;->set(J)V

    const-string v13, "GMT+00:00"

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    const-string v13, "satellites"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-byte v9, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "satellites:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    const/high16 v14, 0x42c80000

    mul-float/2addr v13, v14

    float-to-int v10, v13

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "gps"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v12, 0x1

    :cond_1
    :goto_0
    const/16 v13, 0x16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v13, 0x4

    invoke-static {v6, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x4

    invoke-static {v7, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x4

    invoke-static {v2, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v11, Landroid/text/format/Time;->hour:I

    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v11, Landroid/text/format/Time;->minute:I

    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v11, Landroid/text/format/Time;->second:I

    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x2

    invoke-static {v10, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x2

    invoke-static {v5, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const-string v13, "LPPApdrR"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loc time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "LPPApdrR"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->hour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " min:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->minute:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sec:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->second:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "LPPApdrR"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->hour:I

    int-to-byte v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " min:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->minute:I

    int-to-byte v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sec:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->second:I

    int-to-byte v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x16

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCommonValueToSensorHub(B[B)Z

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "network"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "fused"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x3

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "GPS batch"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x4

    goto/16 :goto_0
.end method

.method public final parse([BI)I
    .locals 18

    move/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v9

    const-string v14, "LppApdr"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parse:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    array-length v14, v0

    sub-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    if-gez v14, :cond_0

    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v13, -0x1

    :goto_0
    return v13

    :cond_0
    aget-byte v14, p1, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    add-int/lit8 v12, v12, 0x1

    aget-byte v16, p1, v12

    invoke-virtual/range {v14 .. v16}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    add-int/lit8 v12, v12, 0x1

    move v13, v12

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v12, 0x1

    aget-byte v14, p1, v12

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v12, -0x1

    move/from16 v17, v13

    move v13, v12

    move/from16 v12, v17

    goto :goto_0

    :cond_2
    add-int/lit8 v12, v13, 0x1

    aget-byte v2, p1, v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dataSize:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    if-gtz v2, :cond_3

    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v13, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int/2addr v14, v12

    mul-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x4

    if-ge v14, v15, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packet len:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " tmpNext:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v13, -0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v13, v12, 0x1

    aget-byte v4, p1, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v8, p1, v13

    add-int/lit8 v13, v12, 0x1

    aget-byte v10, p1, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v3, p1, v13

    new-array v11, v2, [J

    new-array v6, v2, [I

    new-array v7, v2, [I

    new-array v1, v2, [I

    const/4 v5, 0x0

    move v13, v12

    :goto_1
    if-ge v5, v2, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packet length:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  tmpNext:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v13, v12, 0x1

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x64

    int-to-long v14, v14

    aput-wide v14, v11, v5

    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    mul-int/lit8 v14, v14, 0xa

    aput v14, v6, v5

    add-int/lit8 v13, v12, 0x1

    aget-byte v14, p1, v12

    mul-int/lit8 v14, v14, 0xa

    aput v14, v7, v5

    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    aput v14, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v12

    goto :goto_1

    :cond_5
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v12, v13

    goto/16 :goto_0
.end method

.method public final sendSleepModeCmdToSensorHub([B)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v2

    if-ltz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    new-array v1, v3, [B

    aput-byte v3, v1, v4

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, -0x4f

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v3

    invoke-super {p0, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method public final setLppResolution(I)V
    .locals 5

    const/16 v4, 0x1c

    const/16 v3, 0x17

    const/4 v2, 0x2

    const/4 v1, 0x1

    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    if-nez p1, :cond_1

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x258

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v1, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_0

    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0
.end method

.method public final setMagneticSensorOffset(III)V
    .locals 8

    const/4 v4, 0x2

    invoke-static {p1, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-static {p2, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-static {p3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v4, 0x17

    const/16 v5, 0x1c

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
