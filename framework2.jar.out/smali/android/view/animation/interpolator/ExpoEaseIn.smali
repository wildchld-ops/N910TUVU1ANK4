.class public Landroid/view/animation/interpolator/ExpoEaseIn;
.super Ljava/lang/Object;
.source "ExpoEaseIn.java"

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
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private in(F)F
    .locals 4
    .param p1    # F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L

    const/high16 v2, 0x41200000

    const/high16 v3, 0x3f800000

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1    # F

    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/ExpoEaseIn;->in(F)F

    move-result v0

    return v0
.end method
