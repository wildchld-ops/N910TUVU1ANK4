.class public Landroid/view/animation/interpolator/BounceEaseOut;
.super Ljava/lang/Object;
.source "BounceEaseOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private out(F)F
    .locals 5

    const/high16 v4, 0x40f20000

    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fe745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    float-to-double v0, p1

    const-wide v2, 0x3fe1745d1745d174L

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    float-to-double v0, p1

    const-wide v2, 0x3fea2e8ba2e8ba2fL

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    float-to-double v0, p1

    const-wide v2, 0x3fee8ba2e8ba2e8cL

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/BounceEaseOut;->out(F)F

    move-result v0

    return v0
.end method
