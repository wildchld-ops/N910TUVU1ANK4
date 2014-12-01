.class public Lcom/samsung/android/airbutton/animation/BounceEaseIn;
.super Ljava/lang/Object;
.source "BounceEaseIn.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final DEFAULT_BOUNCE_LOOP_CNT:I = 0x4

.field private static final SIN_SHIFT_ANGLE:D = 90.0


# instance fields
.field private mLoopCnt:I

.field private mTotalAngle:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/animation/BounceEaseIn;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/animation/BounceEaseIn;->mLoopCnt:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/airbutton/animation/BounceEaseIn;->mTotalAngle:D

    iput p1, p0, Lcom/samsung/android/airbutton/animation/BounceEaseIn;->mLoopCnt:I

    invoke-direct {p0}, Lcom/samsung/android/airbutton/animation/BounceEaseIn;->calculateTotalAngle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/animation/BounceEaseIn;-><init>(I)V

    return-void
.end method

.method private calculateTotalAngle()V
    .locals 4

    const-wide v0, 0x4056800000000000L

    iget v2, p0, Lcom/samsung/android/airbutton/animation/BounceEaseIn;->mLoopCnt:I

    mul-int/lit16 v2, v2, 0xb4

    int-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/airbutton/animation/BounceEaseIn;->mTotalAngle:D

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v4, 0x3f800000

    iget-wide v0, p0, Lcom/samsung/android/airbutton/animation/BounceEaseIn;->mTotalAngle:D

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L

    sub-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, v4, p1

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    return v0
.end method
