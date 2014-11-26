.class public Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;
.super Ljava/lang/Object;
.source "TiltAlphaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_GRAVITY_ALPHA:F = 0.8f

.field private static final ACCELEROMETER_LOW_MAGNITUDE_FILTER_VAL:F = 0.25f

.field private static final ACCELEROMETER_SHAKING_FILTER_VAL:F = 1.0f

.field private static final ALPHA_VARIATION_WEIGHT:F = 0.29f

.field private static final SMOOTH_LEVEL:F = 2.5f

.field private static final TAG:Ljava/lang/String; = "Tilt_TiltAlphaProvider"


# instance fields
.field private gravity:[F

.field private isAlphaAnimationRunning:Z

.field private linear_acceleration:[F

.field private mAlphaChangedListener:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;

.field private mCurrentAlpha:F

.field private mDelayCntForBoot:I

.field private mHandler:Landroid/os/Handler;

.field private mIsEnable:Z

.field private mMagnitude:F

.field private mMultiple:I

.field private mNextAlpha:F

.field private mParentWindowFocus:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F

    iput v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMultiple:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mIsEnable:Z

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    iput v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMagnitude:F

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mParentWindowFocus:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mDelayCntForBoot:I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->isAlphaAnimationRunning:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;-><init>(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F

    return v0
.end method

.method static synthetic access$016(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;F)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;
    .param p1    # F

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mParentWindowFocus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->stopAlphaAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mAlphaChangedListener:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->isAlphaAnimationRunning:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->loop()V

    return-void
.end method

.method private loop()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAlphaAnimation()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->isAlphaAnimationRunning:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mIsEnable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Tilt_TiltAlphaProvider"

    const-string v1, "startAlphaAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->isAlphaAnimationRunning:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->loop()V

    goto :goto_0
.end method

.method private stopAlphaAnimation()V
    .locals 2

    const-string v0, "Tilt_TiltAlphaProvider"

    const-string v1, "stopAlphaAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->isAlphaAnimationRunning:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    return-void
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1    # Landroid/hardware/SensorEvent;

    const v7, 0x3e4ccccc

    const/high16 v6, 0x3f800000

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mParentWindowFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mIsEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    const v1, 0x3f4ccccd

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    const v1, 0x3f4ccccd

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    const v1, 0x3f4ccccd

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->gravity:[F

    aget v2, v2, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMagnitude:F

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMagnitude:F

    const/high16 v1, 0x3e800000

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mDelayCntForBoot:I

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->startAlphaAnimation()V

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->linear_acceleration:[F

    aget v2, v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e947ae1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMultiple:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMultiple:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMultiple:I

    :cond_2
    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    iput v6, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMultiple:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mMultiple:I

    :cond_3
    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mDelayCntForBoot:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mDelayCntForBoot:I

    goto/16 :goto_0
.end method

.method public registerAlphaChangedListener(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;

    iput-object p1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mAlphaChangedListener:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;

    return-void
.end method

.method public setParentWindowFocusState(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "Tilt_TiltAlphaProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParentWindowFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mParentWindowFocus:Z

    return-void
.end method

.method public setTiltEnable(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "Tilt_TiltAlphaProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTiltEnable() - mIsEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mIsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mIsEnable:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mIsEnable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->stopAlphaAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->clear()V

    return-void
.end method

.method public unregisterAlphaChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mAlphaChangedListener:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;

    return-void
.end method
