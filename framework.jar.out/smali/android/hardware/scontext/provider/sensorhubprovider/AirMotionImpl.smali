.class public Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;
.super Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;
.source "AirMotionImpl.java"


# static fields
.field private static final GESTURE_SENSOR_AMS:I = 0x3

.field private static final GESTURE_SENSOR_MAXIM_VER_1:I = 0x1

.field private static final GESTURE_SENSOR_MAXIM_VER_2:I = 0x2

.field private static final GESTURE_SPEED_LEVEL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SContext.AirMotionImpl"


# instance fields
.field private final GESTURE_VALID_COUNT_RANGE_AMS:[I

.field private final mDirections:[Ljava/lang/String;

.field private final mFeatureLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/hardware/scontext/provider/EventListener;
    .param p3    # I

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, p1, p2, v3, v4}, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;II)V

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->GESTURE_VALID_COUNT_RANGE_AMS:[I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const-string v1, "Right"

    aput-object v1, v0, v4

    const-string v1, "Left"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Down"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Up"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mDirections:[Ljava/lang/String;

    iput p3, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mFeatureLevel:I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0xc8
    .end array-data
.end method

.method private getDirection(F)I
    .locals 2
    .param p1    # F

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mFeatureLevel:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    float-to-int v1, p1

    int-to-char v1, v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    float-to-int v1, p1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4c -> :sswitch_2
        0x52 -> :sswitch_1
        0x55 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 14
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x2

    const/high16 v13, 0x43b40000

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "Values"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v7

    aget v8, v7, v9

    float-to-int v0, v8

    aget v8, v7, v10

    invoke-direct {p0, v8}, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->getDirection(F)I

    move-result v3

    const/4 v5, -0x1

    new-array v4, v9, [I

    const/4 v6, -0x1

    iget v8, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mFeatureLevel:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    if-lez v6, :cond_1

    aget v8, v4, v11

    if-le v6, v8, :cond_5

    aget v6, v4, v11

    :cond_0
    :goto_1
    aget v8, v4, v11

    aget v9, v4, v10

    if-eq v8, v9, :cond_1

    aget v8, v4, v11

    sub-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x64

    aget v9, v4, v11

    aget v10, v4, v10

    sub-int/2addr v9, v10

    div-int v5, v8, v9

    :cond_1
    const-string v8, "Angle"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "Direction"

    invoke-virtual {p1, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "Speed"

    invoke-virtual {p1, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "SContext.AirMotionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse() : Angle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Direction = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mDirections:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Speed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p1

    :pswitch_0
    const/high16 v1, 0x42a00000

    const/4 v8, 0x3

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-float v2, v8, v9

    cmpg-float v8, v2, v12

    if-gez v8, :cond_2

    add-float/2addr v2, v13

    :cond_2
    const/high16 v8, 0x43340000

    cmpl-float v8, v2, v8

    if-lez v8, :cond_3

    sub-float v2, v13, v2

    :cond_3
    cmpl-float v8, v2, v12

    if-ltz v8, :cond_4

    cmpg-float v8, v2, v1

    if-gtz v8, :cond_4

    const-string v8, "SContext.AirMotionImpl"

    const-string v9, "onGetSensorHubData() : AirMotion : The difference of exit and enter angle is below threshold!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->GESTURE_VALID_COUNT_RANGE_AMS:[I

    const/4 v8, 0x7

    aget v8, v7, v8

    float-to-int v6, v8

    goto/16 :goto_0

    :cond_5
    aget v8, v4, v10

    if-ge v6, v8, :cond_0

    aget v6, v4, v10

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
