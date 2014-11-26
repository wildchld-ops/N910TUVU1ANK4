.class public final Lcom/voovio/voo3d/math/VectorMath;
.super Ljava/lang/Object;
.source "VectorMath.java"


# static fields
.field public static UNIT_X:Lcom/voovio/voo3d/data/Vector3;

.field public static UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

.field public static UNIT_Z:Lcom/voovio/voo3d/data/Vector3;

.field public static ZERO_TOLERANCE:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    const v0, 0x358637bd

    sput v0, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v2, v1, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v1, v2, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Z:Lcom/voovio/voo3d/data/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 5
    .param p0    # Lcom/voovio/voo3d/data/Vector3;
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static distance(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F
    .locals 6
    .param p0    # Lcom/voovio/voo3d/data/Vector3;
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, v4, v5

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float v1, v4, v5

    iget v4, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float v2, v4, v5

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    mul-float v5, v2, v2

    add-float v3, v4, v5

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method public static dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F
    .locals 1
    .param p0    # Lcom/voovio/voo3d/data/Vector3;
    .param p1    # Lcom/voovio/voo3d/data/Vector3;
    .param p2    # Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p0, p1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    return v0
.end method

.method public static negate(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 4
    .param p0    # Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    neg-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;
    .locals 4
    .param p0    # Lcom/voovio/voo3d/data/Vector3;
    .param p1    # F

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 5
    .param p0    # Lcom/voovio/voo3d/data/Vector3;
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    return-object v0
.end method
