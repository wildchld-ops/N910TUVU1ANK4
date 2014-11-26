.class public Lcom/voovio/voo3d/data/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"


# instance fields
.field public e0:F

.field public e1:F

.field public e10:F

.field public e11:F

.field public e12:F

.field public e13:F

.field public e14:F

.field public e15:F

.field public e2:F

.field public e3:F

.field public e4:F

.field public e5:F

.field public e6:F

.field public e7:F

.field public e8:F

.field public e9:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 1
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F
    .param p9    # F
    .param p10    # F
    .param p11    # F
    .param p12    # F
    .param p13    # F
    .param p14    # F
    .param p15    # F
    .param p16    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput p2, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iput p3, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iput p4, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput p5, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput p6, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput p7, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iput p8, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iput p9, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput p10, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput p11, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iput p12, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iput p13, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iput p14, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v0, p15

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v0, p16

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .param p1    # [F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method


# virtual methods
.method public FillArray([F)V
    .locals 2
    .param p1    # [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    aput v1, p1, v0

    const/4 v0, 0x4

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    aput v1, p1, v0

    const/16 v0, 0x8

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    aput v1, p1, v0

    const/16 v0, 0xc

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    aput v1, p1, v0

    const/4 v0, 0x5

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    aput v1, p1, v0

    const/16 v0, 0x9

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    aput v1, p1, v0

    const/16 v0, 0xd

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    aput v1, p1, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    aput v1, p1, v0

    const/16 v0, 0xa

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    aput v1, p1, v0

    const/16 v0, 0xe

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    aput v1, p1, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    aput v1, p1, v0

    const/16 v0, 0xb

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    aput v1, p1, v0

    const/16 v0, 0xf

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    aput v1, p1, v0

    return-void
.end method

.method public FromArray([F)V
    .locals 1
    .param p1    # [F

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public FromOrientation(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 2
    .param p1    # Lcom/voovio/voo3d/data/Vector3;
    .param p2    # Lcom/voovio/voo3d/data/Vector3;
    .param p3    # Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    invoke-virtual {p2, p3}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iget v1, p2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget v1, p3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iget v1, p2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget v1, p3, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iget v1, p2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget v1, p3, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    return-void
.end method

.method public ToArray()[F
    .locals 3

    const/16 v1, 0x10

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    aput v2, v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    aput v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    aput v2, v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    aput v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    aput v2, v0, v1

    return-object v0
.end method

.method public axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V
    .locals 11
    .param p1    # Lcom/voovio/voo3d/data/Vector3;
    .param p2    # F

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    const v9, 0x40490fdb

    mul-float/2addr v9, p2

    const/high16 v10, 0x43340000

    div-float p2, v9, v10

    float-to-double v9, p2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v0, v9

    float-to-double v9, p2

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v1, v9

    const/high16 v9, 0x3f800000

    sub-float v2, v9, v0

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v9, v10

    mul-float v4, v9, v2

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v9, v10

    mul-float v7, v9, v2

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v9, v10

    mul-float v5, v9, v2

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float v8, v1, v9

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float v6, v1, v9

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v3, v1, v9

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v9, v0

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    neg-float v9, v8

    add-float/2addr v9, v4

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    add-float v9, v6, v5

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    add-float v9, v8, v4

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v9, v0

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    neg-float v9, v3

    add-float/2addr v9, v7

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    neg-float v9, v6

    add-float/2addr v9, v5

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    add-float v9, v3, v7

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v9, v0

    iput v9, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    return-void
.end method

.method public clone()Lcom/voovio/voo3d/data/Matrix4;
    .locals 18

    new-instance v1, Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/voovio/voo3d/data/Matrix4;-><init>(FFFFFFFFFFFFFFFF)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->clone()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 1
    .param p1    # Lcom/voovio/voo3d/data/Matrix4;

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iget v0, p1, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public det()F
    .locals 5

    iget v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public det3x3()F
    .locals 5

    iget v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public frustumRH(FFFFFF)V
    .locals 4
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    const/high16 v3, 0x40000000

    const/4 v2, 0x0

    mul-float v0, v3, p5

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float v0, v3, p5

    sub-float v1, p3, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    add-float v0, p2, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    add-float v0, p3, p4

    sub-float v1, p3, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    add-float v0, p6, p5

    neg-float v0, v0

    sub-float v1, p6, p5

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    const/high16 v0, -0x40000000

    mul-float/2addr v0, p5

    mul-float/2addr v0, p6

    sub-float v1, p6, p5

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public getInverseNormalizedMatrix()Lcom/voovio/voo3d/data/Matrix4;
    .locals 5

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->getInverseNormalizedRotationMatrix()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v0

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    invoke-direct {v1, v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v2, v2

    iput v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    neg-float v2, v2

    iput v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    neg-float v2, v2

    iput v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    return-object v0
.end method

.method public getInverseNormalizedRotationMatrix()Lcom/voovio/voo3d/data/Matrix4;
    .locals 18

    new-instance v1, Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000

    invoke-direct/range {v1 .. v17}, Lcom/voovio/voo3d/data/Matrix4;-><init>(FFFFFFFFFFFFFFFF)V

    return-object v1
.end method

.method public identity()V
    .locals 2

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public inverse()V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/voovio/voo3d/data/Matrix4;->det()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3f50624dd2f1a9fcL

    cmpg-double v19, v19, v21

    if-gez v19, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v19, 0x3f800000

    div-float v2, v19, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v18, v0

    mul-float v19, v13, v18

    mul-float v20, v17, v14

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    mul-float v20, v9, v18

    mul-float v21, v17, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v12

    sub-float v19, v19, v20

    mul-float v20, v9, v14

    mul-float v21, v13, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v16

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v13, v18

    mul-float v21, v17, v14

    sub-float v20, v20, v21

    mul-float v20, v20, v4

    mul-float v21, v5, v18

    mul-float v22, v17, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v12

    sub-float v20, v20, v21

    mul-float v21, v5, v14

    mul-float v22, v13, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v16

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float v19, v9, v18

    mul-float v20, v17, v10

    sub-float v19, v19, v20

    mul-float v19, v19, v4

    mul-float v20, v5, v18

    mul-float v21, v17, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v8

    sub-float v19, v19, v20

    mul-float v20, v5, v10

    mul-float v21, v9, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v16

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v9, v14

    mul-float v21, v13, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v4

    mul-float v21, v5, v14

    mul-float v22, v13, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v8

    sub-float v20, v20, v21

    mul-float v21, v5, v10

    mul-float v22, v9, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v12

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v13, v18

    mul-float v21, v17, v14

    sub-float v20, v20, v21

    mul-float v20, v20, v7

    mul-float v21, v9, v18

    mul-float v22, v17, v10

    sub-float v21, v21, v22

    mul-float v21, v21, v11

    sub-float v20, v20, v21

    mul-float v21, v9, v14

    mul-float v22, v13, v10

    sub-float v21, v21, v22

    mul-float v21, v21, v15

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float v19, v13, v18

    mul-float v20, v17, v14

    sub-float v19, v19, v20

    mul-float v19, v19, v3

    mul-float v20, v5, v18

    mul-float v21, v17, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v11

    sub-float v19, v19, v20

    mul-float v20, v5, v14

    mul-float v21, v13, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v15

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v9, v18

    mul-float v21, v17, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v3

    mul-float v21, v5, v18

    mul-float v22, v17, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v7

    sub-float v20, v20, v21

    mul-float v21, v5, v10

    mul-float v22, v9, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v15

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float v19, v9, v14

    mul-float v20, v13, v10

    sub-float v19, v19, v20

    mul-float v19, v19, v3

    mul-float v20, v5, v14

    mul-float v21, v13, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v7

    sub-float v19, v19, v20

    mul-float v20, v5, v10

    mul-float v21, v9, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v11

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float v19, v12, v18

    mul-float v20, v16, v14

    sub-float v19, v19, v20

    mul-float v19, v19, v7

    mul-float v20, v8, v18

    mul-float v21, v16, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v11

    sub-float v19, v19, v20

    mul-float v20, v8, v14

    mul-float v21, v12, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v15

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v12, v18

    mul-float v21, v16, v14

    sub-float v20, v20, v21

    mul-float v20, v20, v3

    mul-float v21, v4, v18

    mul-float v22, v16, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v11

    sub-float v20, v20, v21

    mul-float v21, v4, v14

    mul-float v22, v12, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v15

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float v19, v8, v18

    mul-float v20, v16, v10

    sub-float v19, v19, v20

    mul-float v19, v19, v3

    mul-float v20, v4, v18

    mul-float v21, v16, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v7

    sub-float v19, v19, v20

    mul-float v20, v4, v10

    mul-float v21, v8, v6

    sub-float v20, v20, v21

    mul-float v20, v20, v15

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v8, v14

    mul-float v21, v12, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v3

    mul-float v21, v4, v14

    mul-float v22, v12, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v7

    sub-float v20, v20, v21

    mul-float v21, v4, v10

    mul-float v22, v8, v6

    sub-float v21, v21, v22

    mul-float v21, v21, v11

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v12, v17

    mul-float v21, v16, v13

    sub-float v20, v20, v21

    mul-float v20, v20, v7

    mul-float v21, v8, v17

    mul-float v22, v16, v9

    sub-float v21, v21, v22

    mul-float v21, v21, v11

    sub-float v20, v20, v21

    mul-float v21, v8, v13

    mul-float v22, v12, v9

    sub-float v21, v21, v22

    mul-float v21, v21, v15

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    mul-float v19, v12, v17

    mul-float v20, v16, v13

    sub-float v19, v19, v20

    mul-float v19, v19, v3

    mul-float v20, v4, v17

    mul-float v21, v16, v5

    sub-float v20, v20, v21

    mul-float v20, v20, v11

    sub-float v19, v19, v20

    mul-float v20, v4, v13

    mul-float v21, v12, v5

    sub-float v20, v20, v21

    mul-float v20, v20, v15

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    neg-float v0, v2

    move/from16 v19, v0

    mul-float v20, v8, v17

    mul-float v21, v16, v9

    sub-float v20, v20, v21

    mul-float v20, v20, v3

    mul-float v21, v4, v17

    mul-float v22, v16, v5

    sub-float v21, v21, v22

    mul-float v21, v21, v7

    sub-float v20, v20, v21

    mul-float v21, v4, v9

    mul-float v22, v8, v5

    sub-float v21, v21, v22

    mul-float v21, v21, v15

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    mul-float v19, v8, v13

    mul-float v20, v12, v9

    sub-float v19, v19, v20

    mul-float v19, v19, v3

    mul-float v20, v4, v13

    mul-float v21, v12, v5

    sub-float v20, v20, v21

    mul-float v20, v20, v7

    sub-float v19, v19, v20

    mul-float v20, v4, v9

    mul-float v21, v8, v5

    sub-float v20, v20, v21

    mul-float v20, v20, v11

    add-float v19, v19, v20

    mul-float v19, v19, v2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    goto/16 :goto_0
.end method

.method public leftMultiply(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 0
    .param p1    # Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {p0, p1}, Lcom/voovio/voo3d/data/Matrix4;->multiply(Lcom/voovio/voo3d/data/Matrix4;)V

    return-void
.end method

.method public multiply(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 36
    .param p1    # Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v25, v0

    mul-float v34, v2, v18

    mul-float v35, v12, v19

    add-float v34, v34, v35

    mul-float v35, v16, v26

    add-float v34, v34, v35

    mul-float v35, v6, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float v34, v2, v28

    mul-float v35, v12, v29

    add-float v34, v34, v35

    mul-float v35, v16, v30

    add-float v34, v34, v35

    mul-float v35, v6, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float v34, v2, v32

    mul-float v35, v12, v33

    add-float v34, v34, v35

    mul-float v35, v16, v20

    add-float v34, v34, v35

    mul-float v35, v6, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float v34, v2, v22

    mul-float v35, v12, v23

    add-float v34, v34, v35

    mul-float v35, v16, v24

    add-float v34, v34, v35

    mul-float v35, v6, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float v34, v3, v18

    mul-float v35, v13, v19

    add-float v34, v34, v35

    mul-float v35, v17, v26

    add-float v34, v34, v35

    mul-float v35, v7, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float v34, v3, v28

    mul-float v35, v13, v29

    add-float v34, v34, v35

    mul-float v35, v17, v30

    add-float v34, v34, v35

    mul-float v35, v7, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float v34, v3, v32

    mul-float v35, v13, v33

    add-float v34, v34, v35

    mul-float v35, v17, v20

    add-float v34, v34, v35

    mul-float v35, v7, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float v34, v3, v22

    mul-float v35, v13, v23

    add-float v34, v34, v35

    mul-float v35, v17, v24

    add-float v34, v34, v35

    mul-float v35, v7, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float v34, v10, v18

    mul-float v35, v14, v19

    add-float v34, v34, v35

    mul-float v35, v4, v26

    add-float v34, v34, v35

    mul-float v35, v8, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float v34, v10, v28

    mul-float v35, v14, v29

    add-float v34, v34, v35

    mul-float v35, v4, v30

    add-float v34, v34, v35

    mul-float v35, v8, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float v34, v10, v32

    mul-float v35, v14, v33

    add-float v34, v34, v35

    mul-float v35, v4, v20

    add-float v34, v34, v35

    mul-float v35, v8, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float v34, v10, v22

    mul-float v35, v14, v23

    add-float v34, v34, v35

    mul-float v35, v4, v24

    add-float v34, v34, v35

    mul-float v35, v8, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float v34, v11, v18

    mul-float v35, v15, v19

    add-float v34, v34, v35

    mul-float v35, v5, v26

    add-float v34, v34, v35

    mul-float v35, v9, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    mul-float v34, v11, v28

    mul-float v35, v15, v29

    add-float v34, v34, v35

    mul-float v35, v5, v30

    add-float v34, v34, v35

    mul-float v35, v9, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    mul-float v34, v11, v32

    mul-float v35, v15, v33

    add-float v34, v34, v35

    mul-float v35, v5, v20

    add-float v34, v34, v35

    mul-float v35, v9, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    mul-float v34, v11, v22

    mul-float v35, v15, v23

    add-float v34, v34, v35

    mul-float v35, v5, v24

    add-float v34, v34, v35

    mul-float v35, v9, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public multiply3x3(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 22
    .param p1    # Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move-object/from16 v0, p1

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p1

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float v20, v2, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v9, v14

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float v20, v2, v15

    mul-float v21, v6, v16

    add-float v20, v20, v21

    mul-float v21, v9, v17

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float v20, v2, v18

    mul-float v21, v6, v19

    add-float v20, v20, v21

    mul-float v21, v9, v13

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float v20, v3, v11

    mul-float v21, v7, v12

    add-float v20, v20, v21

    mul-float v21, v10, v14

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float v20, v3, v15

    mul-float v21, v7, v16

    add-float v20, v20, v21

    mul-float v21, v10, v17

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float v20, v3, v18

    mul-float v21, v7, v19

    add-float v20, v20, v21

    mul-float v21, v10, v13

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float v20, v5, v11

    mul-float v21, v8, v12

    add-float v20, v20, v21

    mul-float v21, v4, v14

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float v20, v5, v15

    mul-float v21, v8, v16

    add-float v20, v20, v21

    mul-float v21, v4, v17

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float v20, v5, v18

    mul-float v21, v8, v19

    add-float v20, v20, v21

    mul-float v21, v4, v13

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    const/high16 v20, 0x3f800000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public multiply4x3(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 28
    .param p1    # Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move/from16 v19, v0

    mul-float v26, v2, v14

    mul-float v27, v9, v15

    add-float v26, v26, v27

    mul-float v27, v12, v20

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float v26, v2, v21

    mul-float v27, v9, v22

    add-float v26, v26, v27

    mul-float v27, v12, v23

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float v26, v2, v24

    mul-float v27, v9, v25

    add-float v26, v26, v27

    mul-float v27, v12, v16

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float v26, v2, v17

    mul-float v27, v9, v18

    add-float v26, v26, v27

    mul-float v27, v12, v19

    add-float v26, v26, v27

    add-float v26, v26, v5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float v26, v3, v14

    mul-float v27, v10, v15

    add-float v26, v26, v27

    mul-float v27, v13, v20

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float v26, v3, v21

    mul-float v27, v10, v22

    add-float v26, v26, v27

    mul-float v27, v13, v23

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float v26, v3, v24

    mul-float v27, v10, v25

    add-float v26, v26, v27

    mul-float v27, v13, v16

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float v26, v3, v17

    mul-float v27, v10, v18

    add-float v26, v26, v27

    mul-float v27, v13, v19

    add-float v26, v26, v27

    add-float v26, v26, v6

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float v26, v8, v14

    mul-float v27, v11, v15

    add-float v26, v26, v27

    mul-float v27, v4, v20

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float v26, v8, v21

    mul-float v27, v11, v22

    add-float v26, v26, v27

    mul-float v27, v4, v23

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float v26, v8, v24

    mul-float v27, v11, v25

    add-float v26, v26, v27

    mul-float v27, v4, v16

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float v26, v8, v17

    mul-float v27, v11, v18

    add-float v26, v26, v27

    mul-float v27, v4, v19

    add-float v26, v26, v27

    add-float v26, v26, v7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    const/high16 v26, 0x3f800000

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public perspectiveFieldOfViewRH(FFFF)V
    .locals 11
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    float-to-double v5, p3

    float-to-double v7, p1

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v4, v5

    neg-float v3, v4

    mul-float v1, v3, p2

    mul-float v2, v4, p2

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/voovio/voo3d/data/Matrix4;->frustumRH(FFFFFF)V

    return-void
.end method

.method public rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 36
    .param p1    # Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p1

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p1

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move-object/from16 v0, p1

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move-object/from16 v0, p1

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move-object/from16 v0, p1

    iget v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v25, v0

    mul-float v34, v2, v18

    mul-float v35, v12, v19

    add-float v34, v34, v35

    mul-float v35, v16, v26

    add-float v34, v34, v35

    mul-float v35, v6, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float v34, v2, v28

    mul-float v35, v12, v29

    add-float v34, v34, v35

    mul-float v35, v16, v30

    add-float v34, v34, v35

    mul-float v35, v6, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float v34, v2, v32

    mul-float v35, v12, v33

    add-float v34, v34, v35

    mul-float v35, v16, v20

    add-float v34, v34, v35

    mul-float v35, v6, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float v34, v2, v22

    mul-float v35, v12, v23

    add-float v34, v34, v35

    mul-float v35, v16, v24

    add-float v34, v34, v35

    mul-float v35, v6, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float v34, v3, v18

    mul-float v35, v13, v19

    add-float v34, v34, v35

    mul-float v35, v17, v26

    add-float v34, v34, v35

    mul-float v35, v7, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float v34, v3, v28

    mul-float v35, v13, v29

    add-float v34, v34, v35

    mul-float v35, v17, v30

    add-float v34, v34, v35

    mul-float v35, v7, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float v34, v3, v32

    mul-float v35, v13, v33

    add-float v34, v34, v35

    mul-float v35, v17, v20

    add-float v34, v34, v35

    mul-float v35, v7, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float v34, v3, v22

    mul-float v35, v13, v23

    add-float v34, v34, v35

    mul-float v35, v17, v24

    add-float v34, v34, v35

    mul-float v35, v7, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float v34, v10, v18

    mul-float v35, v14, v19

    add-float v34, v34, v35

    mul-float v35, v4, v26

    add-float v34, v34, v35

    mul-float v35, v8, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float v34, v10, v28

    mul-float v35, v14, v29

    add-float v34, v34, v35

    mul-float v35, v4, v30

    add-float v34, v34, v35

    mul-float v35, v8, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float v34, v10, v32

    mul-float v35, v14, v33

    add-float v34, v34, v35

    mul-float v35, v4, v20

    add-float v34, v34, v35

    mul-float v35, v8, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float v34, v10, v22

    mul-float v35, v14, v23

    add-float v34, v34, v35

    mul-float v35, v4, v24

    add-float v34, v34, v35

    mul-float v35, v8, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float v34, v11, v18

    mul-float v35, v15, v19

    add-float v34, v34, v35

    mul-float v35, v5, v26

    add-float v34, v34, v35

    mul-float v35, v9, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    mul-float v34, v11, v28

    mul-float v35, v15, v29

    add-float v34, v34, v35

    mul-float v35, v5, v30

    add-float v34, v34, v35

    mul-float v35, v9, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    mul-float v34, v11, v32

    mul-float v35, v15, v33

    add-float v34, v34, v35

    mul-float v35, v5, v20

    add-float v34, v34, v35

    mul-float v35, v9, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    mul-float v34, v11, v22

    mul-float v35, v15, v23

    add-float v34, v34, v35

    mul-float v35, v5, v24

    add-float v34, v34, v35

    mul-float v35, v9, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public rotationX(F)V
    .locals 4
    .param p1    # F

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    const v2, 0x40490fdb

    mul-float/2addr v2, p1

    const/high16 v3, 0x43340000

    div-float p1, v2, v3

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    neg-float v2, v1

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    return-void
.end method

.method public rotationY(F)V
    .locals 4
    .param p1    # F

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    const v2, 0x40490fdb

    mul-float/2addr v2, p1

    const/high16 v3, 0x43340000

    div-float p1, v2, v3

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    neg-float v2, v1

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    return-void
.end method

.method public rotationZ(F)V
    .locals 4
    .param p1    # F

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    const v2, 0x40490fdb

    mul-float/2addr v2, p1

    const/high16 v3, 0x43340000

    div-float p1, v2, v3

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    neg-float v2, v1

    iput v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iput v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    return-void
.end method

.method public scale(FFF)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # F

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    iput p1, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput p2, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput p3, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()F
    .locals 2

    iget v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    add-float/2addr v0, v1

    return v0
.end method

.method public translation(FFF)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # F

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    iput p1, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput p2, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iput p3, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    return-void
.end method

.method public transpose()V
    .locals 18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move-object/from16 v0, p0

    iput v6, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move-object/from16 v0, p0

    iput v8, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method

.method public vectorMult(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 5
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 5
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void
.end method

.method public zero()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iput v0, p0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    return-void
.end method
