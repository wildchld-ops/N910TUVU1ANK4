.class public Landroid/view/animation/interpolator/SineEaseOut;
.super Ljava/lang/Object;
.source "SineEaseOut.java"

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

.method private out(F)F
    .locals 4
    .param p1    # F

    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1    # F

    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/SineEaseOut;->out(F)F

    move-result v0

    return v0
.end method
