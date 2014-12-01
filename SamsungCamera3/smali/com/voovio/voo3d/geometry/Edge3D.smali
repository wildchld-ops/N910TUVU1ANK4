.class public Lcom/voovio/voo3d/geometry/Edge3D;
.super Ljava/lang/Object;
.source "Edge3D.java"


# static fields
.field public static LEDGE_CLASS_BACK_BACK:I

.field public static LEDGE_CLASS_BACK_COINCIDE:I

.field public static LEDGE_CLASS_COINCIDE_COINCIDE:I

.field public static LEDGE_CLASS_FRONT_BACK:I

.field public static LEDGE_CLASS_FRONT_COINCIDE:I

.field public static LEDGE_CLASS_FRONT_FRONT:I

.field public static LEDGE_CLASS_INTERSECTS:I

.field public static LEDGE_CLASS_UNCLASSIFIED:I

.field public static LEDGE_STATE_BOUNDARY:I

.field public static LEDGE_STATE_INSIDE:I

.field public static LEDGE_STATE_INTERSECTS_ONE:I

.field public static LEDGE_STATE_INTERSECTS_TWO_CONTIGUOUS:I

.field public static LEDGE_STATE_INTERSECTS_TWO_OPPOSITE:I

.field public static LEDGE_STATE_OUTSIDE:I

.field public static LEDGE_STATE_UNDEFINED:I


# instance fields
.field public m_aClass:[I

.field public m_aIntersection:[Lcom/voovio/voo3d/data/Vector3;

.field public m_nState:I

.field public m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

.field public m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

.field public m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    sput v1, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_UNCLASSIFIED:I

    sput v2, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_FRONT_FRONT:I

    sput v3, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_FRONT_BACK:I

    sput v4, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_FRONT_COINCIDE:I

    sput v5, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_BACK_BACK:I

    const/4 v0, 0x4

    sput v0, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_BACK_COINCIDE:I

    const/4 v0, 0x5

    sput v0, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_COINCIDE_COINCIDE:I

    const/4 v0, 0x6

    sput v0, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_INTERSECTS:I

    sput v1, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_UNDEFINED:I

    sput v2, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_OUTSIDE:I

    sput v3, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_INSIDE:I

    sput v4, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_BOUNDARY:I

    sput v5, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_INTERSECTS_ONE:I

    const/4 v0, 0x4

    sput v0, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_INTERSECTS_TWO_OPPOSITE:I

    const/4 v0, 0x5

    sput v0, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_INTERSECTS_TWO_CONTIGUOUS:I

    return-void
.end method

.method public constructor <init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    iput-object p2, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;

    new-array v0, v3, [I

    const/4 v1, 0x0

    sget v2, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_aClass:[I

    new-array v0, v3, [Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_aIntersection:[Lcom/voovio/voo3d/data/Vector3;

    sget v0, Lcom/voovio/voo3d/geometry/Edge3D;->LEDGE_STATE_UNDEFINED:I

    iput v0, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_nState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    return-void
.end method


# virtual methods
.method public Clone()Lcom/voovio/voo3d/geometry/Edge3D;
    .locals 3

    new-instance v0, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v1, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v0, v1, v2}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    return-object v0
.end method

.method public GetSquaredDistance(Lcom/voovio/voo3d/geometry/Edge3D;)F
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    invoke-virtual {v15, v15}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    invoke-virtual/range {v15 .. v16}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    invoke-virtual/range {v16 .. v17}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v8

    mul-float v18, v3, v5

    mul-float v19, v4, v4

    sub-float v2, v18, v19

    move v9, v2

    move v12, v2

    sget v18, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    cmpg-float v18, v2, v18

    if-gez v18, :cond_2

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000

    move v13, v8

    move v12, v5

    :cond_0
    :goto_0
    float-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_6

    const/4 v13, 0x0

    neg-float v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_4

    const/4 v10, 0x0

    :cond_1
    :goto_1
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_9

    const/4 v11, 0x0

    :goto_2
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_a

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v18, v0

    invoke-static {v15, v11}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/voo3d/geometry/Edge3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/voovio/voo3d/geometry/Edge3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v15, v11}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->getSquaredNorm()F

    move-result v18

    return v18

    :cond_2
    mul-float v18, v4, v8

    mul-float v19, v5, v6

    sub-float v10, v18, v19

    mul-float v18, v3, v8

    mul-float v19, v4, v6

    sub-float v13, v18, v19

    float-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_3

    const/4 v10, 0x0

    move v13, v8

    move v12, v5

    goto/16 :goto_0

    :cond_3
    cmpl-float v18, v10, v9

    if-lez v18, :cond_0

    move v10, v9

    add-float v13, v8, v4

    move v12, v5

    goto/16 :goto_0

    :cond_4
    neg-float v0, v6

    move/from16 v18, v0

    cmpl-float v18, v18, v3

    if-lez v18, :cond_5

    move v10, v9

    goto/16 :goto_1

    :cond_5
    neg-float v10, v6

    move v9, v3

    goto/16 :goto_1

    :cond_6
    cmpl-float v18, v13, v12

    if-lez v18, :cond_1

    move v13, v12

    neg-float v0, v6

    move/from16 v18, v0

    add-float v18, v18, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    neg-float v0, v6

    move/from16 v18, v0

    add-float v18, v18, v4

    cmpl-float v18, v18, v3

    if-lez v18, :cond_8

    move v10, v9

    goto/16 :goto_1

    :cond_8
    neg-float v0, v6

    move/from16 v18, v0

    add-float v10, v18, v4

    move v9, v3

    goto/16 :goto_1

    :cond_9
    div-float v11, v10, v9

    goto/16 :goto_2

    :cond_a
    div-float v14, v13, v12

    goto/16 :goto_3
.end method

.method public IsNull()Z
    .locals 2

    iget-object v0, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v1, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v1, p0, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
