.class public Landroid/view/animation/interpolator/ElasticEaseIn;
.super Ljava/lang/Object;
.source "ElasticEaseIn.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private amplitude:F

.field private period:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/animation/interpolator/ElasticEaseIn;->amplitude:F

    iput p2, p0, Landroid/view/animation/interpolator/ElasticEaseIn;->period:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->ElasticEaseIn:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/ElasticEaseIn;->amplitude:F

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/ElasticEaseIn;->period:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private in(FFF)F
    .locals 9

    const-wide v7, 0x401921fb54442d18L

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    cmpl-float v3, p1, v1

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    cmpl-float v3, p3, v1

    if-nez v3, :cond_2

    const p3, 0x3e99999a

    :cond_2
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_3

    cmpg-float v1, p2, v2

    if-gez v1, :cond_4

    :cond_3
    const/high16 p2, 0x3f800000

    const/high16 v1, 0x40800000

    div-float v0, p3, v1

    :goto_1
    float-to-double v3, p2

    const-wide/high16 v5, 0x4000000000000000L

    const/high16 v1, 0x41200000

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v3

    sub-float v3, p1, v0

    float-to-double v3, v3

    mul-double/2addr v3, v7

    float-to-double v5, p3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    goto :goto_0

    :cond_4
    float-to-double v3, p3

    div-double/2addr v3, v7

    div-float v1, v2, p2

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v0, v3

    goto :goto_1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Landroid/view/animation/interpolator/ElasticEaseIn;->amplitude:F

    iget v1, p0, Landroid/view/animation/interpolator/ElasticEaseIn;->period:F

    invoke-direct {p0, p1, v0, v1}, Landroid/view/animation/interpolator/ElasticEaseIn;->in(FFF)F

    move-result v0

    return v0
.end method
