.class public final Lcom/sec/dtl/launcher/GyroForShadow;
.super Ljava/lang/Object;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;
    }
.end annotation


# static fields
.field public static final MAX_OFFSET:F = 70.0f

.field private static mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;",
            ">;"
        }
    .end annotation
.end field

.field static mPrevX:F

.field static mPrevY:F

.field private static sDisplay:Landroid/view/Display;

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field private static final sel:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    new-instance v0, Lcom/sec/dtl/launcher/GyroForShadow$2;

    invoke-direct {v0}, Lcom/sec/dtl/launcher/GyroForShadow$2;-><init>()V

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/hardware/SensorEventListener;
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$100()Landroid/hardware/SensorManager;
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(FFF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/dtl/launcher/GyroForShadow;->onAccelerometerChanged(FFF)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sput-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->sDisplay:Landroid/view/Display;

    return-void
.end method

.method private static onAccelerometerChanged(FFF)V
    .locals 12

    const v11, 0x3e99999a

    move v5, p0

    move v6, p1

    move v7, p2

    sget-object v8, Lcom/sec/dtl/launcher/GyroForShadow;->sDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_0
    mul-float v8, v5, v5

    mul-float v9, v6, v6

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    div-float/2addr v5, v1

    div-float/2addr v6, v1

    div-float/2addr v7, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3a83126f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    mul-float v8, v5, v5

    mul-float v9, v6, v6

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    div-float/2addr v5, v1

    div-float/2addr v6, v1

    div-float/2addr v7, v1

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v4, v5, v8

    const/4 v0, 0x0

    :goto_2
    sget-object v8, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    sget-object v8, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-virtual {v8, v5, v6, v7, v4}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;->onVectorChanged(FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    neg-float v5, p1

    move v6, p0

    goto :goto_0

    :pswitch_1
    neg-float v5, p0

    neg-float v6, p1

    goto :goto_0

    :pswitch_2
    move v5, p1

    neg-float v6, p0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000

    const/high16 v8, -0x40800000

    const/high16 v9, 0x3f800000

    neg-float v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v3, v8, v2

    cmpg-float v8, v7, v11

    if-gez v8, :cond_1

    const/4 v8, 0x0

    div-float v9, v7, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v3, v8

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static pauseSensor()V
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->stopSensor()V

    :cond_0
    return-void
.end method

.method public static registerListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->startSensor()V

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static resumeSensor()V
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->startSensor()V

    :cond_0
    return-void
.end method

.method public static startSensor()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-instance v1, Lcom/sec/dtl/launcher/GyroForShadow$1;

    invoke-direct {v1}, Lcom/sec/dtl/launcher/GyroForShadow$1;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sput v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sput v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    return-void
.end method

.method public static stopSensor()V
    .locals 2

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public static unregisterListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->stopSensor()V

    :cond_0
    return-void
.end method
