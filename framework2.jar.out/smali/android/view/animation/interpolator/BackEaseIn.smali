.class public Landroid/view/animation/interpolator/BackEaseIn;
.super Ljava/lang/Object;
.source "BackEaseIn.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/animation/interpolator/BackEaseIn;->overshot:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->BackEaseIn:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/BackEaseIn;->overshot:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private in(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const p2, 0x3fd9cd60

    :cond_0
    mul-float v0, p1, p1

    const/high16 v1, 0x3f800000

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Landroid/view/animation/interpolator/BackEaseIn;->overshot:F

    invoke-direct {p0, p1, v0}, Landroid/view/animation/interpolator/BackEaseIn;->in(FF)F

    move-result v0

    return v0
.end method
