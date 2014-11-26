.class public final Lcom/visionobjects/a/a/b;
.super Ljava/lang/Object;
.source "PressureSimulator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/visionobjects/a/a/c$a;F)V
    .locals 5

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/visionobjects/a/a/c$a;->c:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/visionobjects/a/a/c$a;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const v0, 0x3f333333

    iput v0, p0, Lcom/visionobjects/a/a/c$a;->c:F

    goto :goto_0

    :cond_1
    const v0, 0x3dcccccd

    const/high16 v1, 0x3f800000

    const v2, 0x3e99999a

    iget v3, p0, Lcom/visionobjects/a/a/c$a;->f:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/a/a/c$a;->c:F

    goto :goto_0
.end method
