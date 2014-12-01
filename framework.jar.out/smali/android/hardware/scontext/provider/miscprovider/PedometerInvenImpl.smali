.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.super Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final LOGGING_MAX_TIME:J = 0x124f80L

.field private static final PATH_CADENCE:Ljava/lang/String; = "/shealth_cadence"

.field private static final PATH_CADENCE_ENABLE:Ljava/lang/String; = "/shealth_cadence_enable"

.field private static final PATH_CADENCE_INTERRUPT:Ljava/lang/String; = "/event_shealth_int"

.field private static final PATH_FLUSH_CADENCE:Ljava/lang/String; = "/shealth_flush_cadence"

.field private static final PATH_PREFIX:Ljava/lang/String; = "/sys/bus/iio/devices/iio:device"

.field private static final PATH_STEPCOUNT:Ljava/lang/String; = "/pedometer_steps"

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerInvenImpl"


# instance fields
.field private mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

.field private final mIsBarometerAvailable:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

.field private final mPrefix:Ljava/lang/String;

.field private mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field private mPrevStepCnt:J

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    invoke-direct {v3}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;-><init>()V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.sensor.barometer"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getDeviceNode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    return-object p1
.end method

.method private getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;
    .locals 35

    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    move/from16 v0, p4

    new-array v12, v0, [J

    move/from16 v0, p4

    new-array v10, v0, [J

    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v33, v0

    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v31, v0

    move/from16 v0, p4

    new-array v11, v0, [J

    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v27, v0

    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move/from16 v0, p4

    new-array v13, v0, [D

    move/from16 v0, p4

    new-array v14, v0, [D

    move/from16 v0, p4

    new-array v15, v0, [D

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v18, v0

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v16, v0

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v34, v0

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v32, v0

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v17, v0

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v28, v0

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v26, v0

    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v19, v0

    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v20, v0

    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v22, v0

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v21, v0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v21, v3

    :cond_1
    :goto_0
    const-string v3, "Mode"

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "StepStatus"

    const/4 v4, 0x0

    aget v4, v21, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "CalorieDiff"

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "DistanceDiff"

    const/4 v4, 0x0

    aget-wide v4, v20, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "Speed"

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "WalkingFrequency"

    const/4 v4, 0x0

    aget-wide v4, v22, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "TotalStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "WalkStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "WalkUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v34, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "WalkDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v32, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "RunStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "RunUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v28, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "RunDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v26, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "UpDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v34, v4

    const/4 v6, 0x0

    aget-wide v6, v32, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v28, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v26, v6

    add-long/2addr v4, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    const-string v3, "LoggingCount"

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "TimeStampArray"

    move-object/from16 v0, v23

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "CalorieDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v3, "DistanceDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v14}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v3, "SpeedArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v3, "TotalStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "WalkStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "WalkUpStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "WalkDownStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "RunStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "RunUpStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "RunDownStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "StepStatus"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v29, 0x0

    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    aget-wide v3, v15, v24

    add-double v29, v29, v3

    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v22}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    goto/16 :goto_0

    :cond_3
    if-lez p4, :cond_4

    move/from16 v0, p4

    int-to-double v3, v0

    div-double v29, v29, v3

    :cond_4
    const-string v3, "Speed"

    move-object/from16 v0, v23

    move-wide/from16 v1, v29

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_5
    return-object v23
.end method

.method private getDeviceNode()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/shealth_cadence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 35

    if-nez p2, :cond_1

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    aput-wide v30, v3, v29

    const-string v3, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "parseCadence() : Interrupt Mode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", mTimeStamp[0] = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-wide v30, v30, v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", mTimeStamp[1] = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget-wide v30, v30, v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_3

    const/4 v4, 0x0

    const/4 v7, 0x1

    :cond_2
    :goto_1
    if-lez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v1, v3}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_9

    :cond_4
    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    move-wide/from16 v31, v0

    sub-long v12, v29, v31

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    const/4 v7, 0x1

    new-array v5, v7, [J

    new-array v6, v7, [J

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_5

    const-wide/16 v29, 0x6

    cmp-long v3, v12, v29

    if-nez v3, :cond_5

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v29, 0x0

    cmp-long v3, v12, v29

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x1

    aget-wide v29, v3, v29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v31, 0x0

    aget-wide v31, v3, v31

    sub-long v8, v29, v31

    const-wide/16 v29, 0x6

    cmp-long v3, v12, v29

    if-lez v3, :cond_8

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_7

    const-wide/16 v12, 0x6

    const-wide/16 v8, 0x0

    :cond_6
    :goto_2
    const/4 v3, 0x0

    aput-wide v12, v5, v3

    goto/16 :goto_1

    :cond_7
    const-wide/16 v12, 0x1

    goto :goto_2

    :cond_8
    const-wide/16 v29, 0x2

    cmp-long v3, v12, v29

    if-lez v3, :cond_6

    const-wide/16 v29, 0x6

    cmp-long v3, v12, v29

    if-gez v3, :cond_6

    const-wide/16 v12, 0x1

    goto :goto_2

    :cond_9
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2

    const/4 v4, 0x1

    new-instance v26, Ljava/util/StringTokenizer;

    const-string v3, ","

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    const-string v3, "\n"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v29, 0x3

    move/from16 v0, v29

    if-lt v3, v0, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    sub-long v29, v14, v20

    const-wide/32 v31, 0xf4240

    div-long v27, v29, v31

    const-wide/32 v29, 0x124f80

    cmp-long v3, v27, v29

    if-ltz v3, :cond_c

    const-wide/32 v8, 0xea60

    :goto_4
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x1

    if-lt v7, v3, :cond_b

    const/16 v3, 0x14

    if-le v7, v3, :cond_d

    :cond_b
    const-string v3, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "the size of cadence is wrong. : size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-wide/32 v29, 0xea60

    rem-long v8, v27, v29

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x1

    aget-wide v29, v3, v29

    sub-long v31, v14, v20

    const-wide/32 v33, 0xf4240

    div-long v31, v31, v33

    sub-long v22, v29, v31

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    cmp-long v3, v22, v29

    if-gez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    const-wide/16 v31, 0x1

    add-long v22, v29, v31

    :cond_e
    const v3, 0xea60

    add-int/lit8 v29, v7, -0x1

    mul-int v3, v3, v29

    int-to-long v0, v3

    move-wide/from16 v29, v0

    add-long v29, v29, v22

    const-wide/32 v31, 0xea60

    div-long v29, v29, v31

    const-wide/32 v31, 0xea60

    mul-long v16, v29, v31

    new-array v5, v7, [J

    new-array v6, v7, [J

    new-array v10, v7, [J

    add-int/lit8 v11, v7, -0x1

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    if-ge v0, v7, :cond_2

    add-int/lit8 v3, v18, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    shr-int/lit8 v3, v25, 0x8

    int-to-long v0, v3

    move-wide/from16 v29, v0

    aput-wide v29, v6, v11

    move/from16 v0, v25

    and-int/lit16 v3, v0, 0xff

    int-to-long v0, v3

    move-wide/from16 v29, v0

    aput-wide v29, v5, v11

    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v29, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, v29

    if-eq v3, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    cmp-long v3, v22, v29

    if-gez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    const-wide/16 v31, 0x1

    add-long v29, v29, v31

    aput-wide v29, v10, v11

    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    move-wide/from16 v29, v0

    aget-wide v31, v6, v11

    add-long v29, v29, v31

    aget-wide v31, v5, v11

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_f
    aput-wide v22, v10, v11

    goto :goto_6

    :cond_10
    add-int/lit8 v3, v7, -0x1

    if-ne v11, v3, :cond_11

    aput-wide v16, v10, v11

    goto :goto_6

    :cond_11
    add-int/lit8 v3, v11, 0x1

    aget-wide v29, v10, v3

    const-wide/32 v31, 0xea60

    sub-long v29, v29, v31

    aput-wide v29, v10, v11

    goto :goto_6
.end method


# virtual methods
.method register()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    invoke-virtual {v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->start()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method requestToUpdate()V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/shealth_flush_cadence"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    invoke-static {v0, v6, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    invoke-direct {p0, v6, v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v1, v2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_5
    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v8, v8, v9

    aput-wide v8, v7, v10

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_6
    throw v6

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v3

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v3

    move-object v1, v2

    goto :goto_2
.end method

.method setLoggingMode(Z)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLoggingMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shealth_cadence_enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    if-eqz p1, :cond_3

    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v2, v3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v4, 0x30

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v4

    :goto_6
    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v6, v7

    aput-wide v6, v5, v8

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_7
    throw v4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method setProperty(IDD)V
    .locals 6

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_pedometer_initialize(IDD)V

    return-void
.end method

.method unregister()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
