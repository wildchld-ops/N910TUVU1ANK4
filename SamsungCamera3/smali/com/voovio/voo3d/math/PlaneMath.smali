.class public final Lcom/voovio/voo3d/math/PlaneMath;
.super Ljava/lang/Object;
.source "PlaneMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lineIntersectPlane(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;[FLcom/voovio/voo3d/data/Vector3;)Z
    .locals 7

    invoke-virtual {p1, p2}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/4 v4, 0x0

    aget v4, p3, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    const/4 v5, 0x1

    aget v5, p3, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x2

    aget v5, p3, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, p3, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    invoke-virtual {p4, p0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, p3, v4

    iget v5, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, p3, v4

    iget v5, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, p3, v4

    add-float/2addr v3, v4

    neg-float v2, v3

    div-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    invoke-static {p0, v1}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v3, 0x1

    goto :goto_0
.end method
