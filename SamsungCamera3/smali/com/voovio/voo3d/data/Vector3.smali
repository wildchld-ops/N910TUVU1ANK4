.class public Lcom/voovio/voo3d/data/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput p2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput p3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method


# virtual methods
.method public add(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 2

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public clone()Lcom/voovio/voo3d/data/Vector3;
    .locals 4

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 1

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 6

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 3

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public dot(Lcom/voovio/voo3d/data/Vector3;)F
    .locals 3

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F
    .locals 2

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v1, p2}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    invoke-static {v1}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return v0
.end method

.method public equals(Lcom/voovio/voo3d/data/Vector3;)Z
    .locals 2

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAngle(Lcom/voovio/voo3d/data/Vector3;)F
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v1

    invoke-virtual {p1}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v2

    mul-float v0, v1, v2

    cmpl-float v6, v0, v5

    if-nez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0, p1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    div-float v3, v6, v0

    const/high16 v6, 0x3f800000

    mul-float v7, v3, v3

    sub-float v4, v6, v7

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    const-string v5, "Vector3::getAngle"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Wrong Sin^2 for Cos: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_1
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    float-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v5, v5

    goto :goto_0
.end method

.method public getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F
    .locals 9

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v3

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    invoke-virtual {p2, p0, v3}, Lcom/voovio/voo3d/data/Vector3;->unitCross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {p2, p1, v4}, Lcom/voovio/voo3d/data/Vector3;->unitCross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v3, v4, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v3, v4}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    const/high16 v5, 0x3f800000

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    const/high16 v0, 0x3f800000

    :cond_0
    :goto_0
    invoke-virtual {v2, p2}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v1, v5

    :cond_1
    invoke-static {v3}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v4}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    float-to-double v5, v1

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    return v5

    :cond_2
    const/high16 v5, -0x40800000

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method public getDistance(Lcom/voovio/voo3d/data/Vector3;)F
    .locals 5

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, v3, v4

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float v1, v3, v4

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float v2, v3, v4

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public getNorm()F
    .locals 3

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getSquaredNorm()F
    .locals 3

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public negate()V
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public normalize()F
    .locals 2

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    return-void
.end method

.method public reset(FFF)V
    .locals 0

    iput p1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput p2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput p3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V
    .locals 3

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v0

    const/high16 v1, 0x43340000

    mul-float/2addr v1, p1

    const v2, 0x40490fdb

    div-float/2addr v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/voovio/voo3d/data/Matrix4;->axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V

    invoke-virtual {v0, p0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v0}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    return-void
.end method

.method public rotateY(F)V
    .locals 6

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v4, v2, v0

    mul-float v5, v3, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v4, v2

    mul-float/2addr v4, v1

    mul-float v5, v3, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public sub(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 2

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/data/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unitCross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 6

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    return-object v0
.end method

.method public unitCross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 3

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v0, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    return-void
.end method
