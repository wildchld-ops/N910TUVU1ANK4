.class public Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
.super Ljava/lang/Object;
.source "MorphoSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorData"
.end annotation


# instance fields
.field public mTimeStamp:J

.field public mValues:[D


# direct methods
.method public constructor <init>(J[D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    return-void
.end method

.method public constructor <init>(J[F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    array-length v1, p3

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    aget v2, p3, v0

    float-to-double v2, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
