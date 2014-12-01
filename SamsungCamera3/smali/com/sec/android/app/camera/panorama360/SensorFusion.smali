.class public Lcom/sec/android/app/camera/panorama360/SensorFusion;
.super Ljava/lang/Object;
.source "SensorFusion.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final MAX_DATA_NUM:I = 0x200

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

.field public static final SENSOR_TYPE_NUM:I = 0x4

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x3

.field public static final STATE_CALC_OFFSET:I = 0x0

.field public static final STATE_PROCESS:I = 0x1


# instance fields
.field private mAllValueList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

.field private mPartOfAccelerometerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfGyroscopeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfMagneticFieldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfRotationVectorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorMatrix:[[D

.field private mStock:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mStock:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mStock:Z

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v3, [[D

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->createMatrix()[D

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-direct {v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->initialize()I

    return-void
.end method

.method private calcRotationMatrix([DDDD)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->createMatrix()[D

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->createMatrix()[D

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->createMatrix()[D

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->createMatrix()[D

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    aput-wide v5, v1, v4

    const/4 v4, 0x5

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    aput-wide v5, v1, v4

    const/4 v4, 0x7

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    aput-wide v5, v1, v4

    const/16 v4, 0x8

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    aput-wide v5, v1, v4

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    aput-wide v5, v2, v4

    const/4 v4, 0x2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    aput-wide v5, v2, v4

    const/4 v4, 0x6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    aput-wide v5, v2, v4

    const/16 v4, 0x8

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    aput-wide v5, v2, v4

    const/4 v4, 0x0

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    aput-wide v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    aput-wide v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    aput-wide v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    aput-wide v5, v3, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->multMatrix([D[D[D)V

    invoke-direct {p0, p1, v0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->multMatrix([D[D[D)V

    return-void
.end method

.method private clearArrayList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private createMatrix()[D
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x3ff0000000000000L
        0x0
        0x0
        0x0
        0x3ff0000000000000L
        0x0
        0x0
        0x0
        0x3ff0000000000000L
    .end array-data
.end method

.method private getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x200

    if-le v3, v4, :cond_3

    const/16 v2, 0x200

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    new-instance v5, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    iget-wide v6, v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    iget-object v4, v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-direct {v5, v6, v7, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;-><init>(J[D)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isExistValue(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUpdateSensorMatrix()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v2

    and-int v0, v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v2

    and-int v0, v1, v2

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v2

    and-int v0, v1, v2

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v2

    and-int v0, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private multMatrix([D[D[D)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/16 v6, 0x9

    new-array v3, v6, [D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_0

    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v2

    aget-wide v6, p2, v6

    mul-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v1

    aget-wide v8, p3, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v1

    aput-wide v4, v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v6, v3

    invoke-static {v3, v11, p1, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setInputSensorData([Ljava/lang/Object;I)I
    .locals 1

    if-nez p1, :cond_0

    const v0, -0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setSensorData([Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method private updateSensorMatrix()I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mStock:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->calc()I

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    iget-object v4, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    aget-object v4, v4, v6

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    iget-object v4, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    aget-object v4, v4, v5

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    iget-object v4, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    aget-object v4, v4, v7

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result v3

    or-int/2addr v2, v3

    return v2

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearStockData()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mStock:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSensorMatrix([D[D[D[I)I
    .locals 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->isUpdateSensorMatrix()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->updateSensorMatrix()I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v5, v5

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v6, 0x3

    aget-object v5, v5, v6

    array-length v5, v5

    invoke-static {v2, v3, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v6, 0x1

    aget-object v5, v5, v6

    array-length v5, v5

    invoke-static {v2, v3, p3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mStock:Z

    if-eqz v2, :cond_4

    if-eqz p4, :cond_4

    array-length v2, p4

    iget-object v3, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ne v2, v3, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStockData()[Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mStock:Z

    if-eqz v2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mAllValueList:[Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/util/ArrayList;

    move-object v1, v0

    monitor-exit p0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/16 v5, 0x200

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :sswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->finish()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetOffsetValue()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setAppState(I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->calc()I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppState(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setAppState(I)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInitialOrientation(I)V
    .locals 8

    const-wide/16 v2, 0x0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->calcRotationMatrix([DDDD)V

    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->calcRotationMatrix([DDDD)V

    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mSensorMatrix:[[D

    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->calcRotationMatrix([DDDD)V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setMode(I)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOffsetMode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setOffsetMode(I)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRotation(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/panorama360/SensorFusion;->mMorphoSensorFusion:Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setRotation(I)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
