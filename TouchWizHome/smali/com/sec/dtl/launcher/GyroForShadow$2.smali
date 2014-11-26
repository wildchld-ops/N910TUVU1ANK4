.class final Lcom/sec/dtl/launcher/GyroForShadow$2;
.super Ljava/lang/Object;
.source "GyroForShadow.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/GyroForShadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1    # Landroid/hardware/SensorEvent;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v13, 0x3f800000

    const v12, 0x3d8f5c29

    const/high16 v11, -0x40800000

    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v7, v9

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v7, v8

    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide v9, 0x3fa99999a0000000L

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_0

    sget v7, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    mul-float v8, v0, v12

    add-float/2addr v7, v8

    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sget v7, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    mul-float v8, v1, v12

    add-float/2addr v7, v8

    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sput v5, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    const/high16 v6, 0x3f800000

    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    div-float/2addr v6, v3

    const/4 v2, 0x0

    :goto_1
    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$200()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$200()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    sget v8, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    invoke-virtual {v7, v4, v5, v6, v8}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;->onVectorChanged(FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v9

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    # invokes: Lcom/sec/dtl/launcher/GyroForShadow;->onAccelerometerChanged(FFF)V
    invoke-static {v7, v8, v9}, Lcom/sec/dtl/launcher/GyroForShadow;->access$300(FFF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
