.class public abstract Lcom/voovio/gles/GLESUtil;
.super Ljava/lang/Object;
.source "GLESUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluPerspective(FFFF)V
    .locals 10
    .param p0    # F
    .param p1    # F
    .param p2    # F
    .param p3    # F

    float-to-double v4, p2

    float-to-double v6, p0

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide v8, 0x4076800000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    neg-float v2, v3

    mul-float v0, v2, p1

    mul-float v1, v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES11;->glFrustumf(FFFFFF)V

    return-void
.end method
