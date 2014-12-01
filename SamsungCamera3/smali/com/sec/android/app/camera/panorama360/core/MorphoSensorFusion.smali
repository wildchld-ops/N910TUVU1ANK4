.class public Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;
.super Ljava/lang/Object;
.source "MorphoSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    }
.end annotation


# static fields
.field public static final MAXIMUM_DATA_SIZE:I = 0x200

.field public static final MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:I = 0x3

.field public static final MODE_USE_ALL_SENSORS:I = 0x0

.field public static final MODE_USE_GYROSCOPE:I = 0x1

.field public static final MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:I = 0x4

.field public static final MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:I = 0x2

.field public static final OFFSET_MODE_DYNAMIC:I = 0x1

.field public static final OFFSET_MODE_STATIC:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x1

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x3

.field public static final STATE_CALC_OFFSET:I = 0x0

.field public static final STATE_PROCESS:I = 0x1


# instance fields
.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    const/16 v1, 0x14b

    const-string v2, "morpho_sensor_fusion"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->loadExternalLibrary(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->createNativeObject()I

    move-result v0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method private final native calc(I)I
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method private final native finish(I)I
.end method

.method private final native initialize(I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native outputRotationAngle(I[D)I
.end method

.method private final native outputRotationMatrix3x3(II[D)I
.end method

.method private final native setAppState(II)I
.end method

.method private final native setMode(II)I
.end method

.method private final native setOffset(ILcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;I)I
.end method

.method private final native setOffsetMode(II)I
.end method

.method private final native setRotation(II)I
.end method

.method private final native setSensorData(I[Ljava/lang/Object;I)I
.end method

.method private final native setSensorReliability(III)I
.end method


# virtual methods
.method public calc()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->calc(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->finish(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->deleteNativeObject(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->initialize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public outputRotationAngle([D)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->outputRotationAngle(I[D)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public outputRotationMatrix3x3(I[D)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->outputRotationMatrix3x3(II[D)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setAppState(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setAppState(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMode(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setMode(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setOffset(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setOffset(ILcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setOffsetMode(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setOffsetMode(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setRotation(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setRotation(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setSensorData([Ljava/lang/Object;I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setSensorData(I[Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setSensorReliability(II)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setSensorReliability(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
