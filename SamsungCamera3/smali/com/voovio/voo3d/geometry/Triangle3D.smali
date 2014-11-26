.class public Lcom/voovio/voo3d/geometry/Triangle3D;
.super Ljava/lang/Object;
.source "Triangle3D.java"


# instance fields
.field public m_aEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/voo3d/geometry/Edge3D;",
            ">;"
        }
    .end annotation
.end field

.field public m_aVertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/voo3d/geometry/Vertex3D;",
            ">;"
        }
    .end annotation
.end field

.field public m_fIDist:F

.field public m_fd:F

.field public m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

.field public m_ptI:Lcom/voovio/voo3d/data/Vector3;

.field public m_vN:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iput v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    iput v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fIDist:F

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public AddVertex(Lcom/voovio/voo3d/geometry/Vertex3D;)V
    .locals 8
    .param p1    # Lcom/voovio/voo3d/geometry/Vertex3D;

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    new-instance v0, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v4, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v0, v3, v4}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    new-instance v1, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v4, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v1, v3, v4}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    new-instance v2, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v4, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v2, v3, v4}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public GetPointD2(Lcom/voovio/voo3d/data/Vector3;)F
    .locals 24
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/voovio/voo3d/data/Vector3;

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/voovio/voo3d/data/Vector3;

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3;->getSquaredNorm()F

    move-result v2

    invoke-virtual/range {v18 .. v19}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/voovio/voo3d/data/Vector3;->getSquaredNorm()F

    move-result v4

    invoke-virtual/range {v17 .. v18}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v5

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3;->getSquaredNorm()F

    move-result v7

    mul-float v20, v2, v4

    mul-float v21, v3, v3

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float v20, v3, v6

    mul-float v21, v4, v5

    sub-float v12, v20, v21

    mul-float v20, v3, v5

    mul-float v21, v2, v6

    sub-float v14, v20, v21

    add-float v20, v12, v14

    cmpg-float v20, v20, v9

    if-gtz v20, :cond_c

    const/16 v20, 0x0

    cmpg-float v20, v12, v20

    if-gez v20, :cond_8

    const/16 v20, 0x0

    cmpg-float v20, v14, v20

    if-gez v20, :cond_5

    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_2

    const/4 v14, 0x0

    neg-float v0, v5

    move/from16 v20, v0

    cmpl-float v20, v20, v2

    if-ltz v20, :cond_1

    const/high16 v12, 0x3f800000

    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    :goto_0
    const/16 v20, 0x0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_0

    const/4 v13, 0x0

    :cond_0
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    return v13

    :cond_1
    neg-float v0, v5

    move/from16 v20, v0

    div-float v12, v20, v2

    mul-float v20, v5, v12

    add-float v13, v20, v7

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-ltz v20, :cond_3

    const/4 v14, 0x0

    move v13, v7

    goto :goto_0

    :cond_3
    neg-float v0, v6

    move/from16 v20, v0

    cmpl-float v20, v20, v4

    if-ltz v20, :cond_4

    const/high16 v14, 0x3f800000

    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    goto :goto_0

    :cond_4
    neg-float v0, v6

    move/from16 v20, v0

    div-float v14, v20, v4

    mul-float v20, v6, v14

    add-float v13, v20, v7

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-ltz v20, :cond_6

    const/4 v14, 0x0

    move v13, v7

    goto :goto_0

    :cond_6
    neg-float v0, v6

    move/from16 v20, v0

    cmpl-float v20, v20, v4

    if-ltz v20, :cond_7

    const/high16 v14, 0x3f800000

    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_7
    neg-float v0, v6

    move/from16 v20, v0

    div-float v14, v20, v4

    mul-float v20, v6, v14

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_8
    float-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_b

    const/4 v14, 0x0

    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_9

    const/4 v12, 0x0

    move v13, v7

    goto/16 :goto_0

    :cond_9
    neg-float v0, v5

    move/from16 v20, v0

    cmpl-float v20, v20, v2

    if-ltz v20, :cond_a

    const/high16 v12, 0x3f800000

    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_a
    neg-float v0, v5

    move/from16 v20, v0

    div-float v12, v20, v2

    mul-float v20, v5, v12

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_b
    const/high16 v20, 0x3f800000

    div-float v10, v20, v9

    mul-float/2addr v12, v10

    mul-float/2addr v14, v10

    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_c
    float-to-double v0, v12

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_11

    add-float v15, v3, v5

    add-float v16, v4, v6

    cmpl-float v20, v16, v15

    if-lez v20, :cond_e

    sub-float v11, v16, v15

    const/high16 v20, 0x40000000

    mul-float v20, v20, v3

    sub-float v20, v2, v20

    add-float v8, v20, v4

    cmpl-float v20, v11, v8

    if-ltz v20, :cond_d

    const/high16 v12, 0x3f800000

    const/4 v14, 0x0

    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_d
    div-float v12, v11, v8

    const/high16 v20, 0x3f800000

    sub-float v14, v20, v12

    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_f

    const/high16 v14, 0x3f800000

    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_f
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-ltz v20, :cond_10

    const/4 v14, 0x0

    move v13, v7

    goto/16 :goto_0

    :cond_10
    neg-float v0, v6

    move/from16 v20, v0

    div-float v14, v20, v4

    mul-float v20, v6, v14

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_11
    float-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_16

    add-float v15, v3, v6

    add-float v16, v2, v5

    cmpl-float v20, v16, v15

    if-lez v20, :cond_13

    sub-float v11, v16, v15

    const/high16 v20, 0x40000000

    mul-float v20, v20, v3

    sub-float v20, v2, v20

    add-float v8, v20, v4

    cmpl-float v20, v11, v8

    if-ltz v20, :cond_12

    const/high16 v14, 0x3f800000

    const/4 v12, 0x0

    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_12
    div-float v14, v11, v8

    const/high16 v20, 0x3f800000

    sub-float v12, v20, v14

    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_13
    const/4 v14, 0x0

    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_14

    const/high16 v12, 0x3f800000

    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_14
    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_15

    const/4 v12, 0x0

    move v13, v7

    goto/16 :goto_0

    :cond_15
    neg-float v0, v5

    move/from16 v20, v0

    div-float v12, v20, v2

    mul-float v20, v5, v12

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_16
    add-float v20, v4, v6

    sub-float v20, v20, v3

    sub-float v11, v20, v5

    const/16 v20, 0x0

    cmpg-float v20, v11, v20

    if-gtz v20, :cond_17

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000

    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_17
    const/high16 v20, 0x40000000

    mul-float v20, v20, v3

    sub-float v20, v2, v20

    add-float v8, v20, v4

    cmpl-float v20, v11, v8

    if-ltz v20, :cond_18

    const/high16 v12, 0x3f800000

    const/4 v14, 0x0

    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    goto/16 :goto_0

    :cond_18
    div-float v12, v11, v8

    const/high16 v20, 0x3f800000

    sub-float v14, v20, v12

    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    goto/16 :goto_0
.end method

.method public SetNormal()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v2, v3}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v2, v3}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    return-void
.end method

.method public TestPointSide(Lcom/voovio/voo3d/geometry/Vertex3D;)I
    .locals 3
    .param p1    # Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, p1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v1

    iget v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    add-float v0, v1, v2

    sget v1, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_FRONT:I

    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    neg-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    sget v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_BACK:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_COINCIDE:I

    goto :goto_0
.end method

.method public TestSegmentIntersection(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Z
    .locals 11
    .param p1    # Lcom/voovio/voo3d/data/Vector3;
    .param p2    # Lcom/voovio/voo3d/data/Vector3;

    const/4 v10, 0x0

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    iput v10, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fIDist:F

    invoke-static {p2, p1}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v8, p1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v8

    iget v9, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    add-float/2addr v8, v9

    neg-float v8, v8

    iget-object v9, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v5}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v9

    div-float v2, v8, v9

    invoke-static {v5, v2}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-lt v4, v0, :cond_0

    iput-object v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    iput v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fIDist:F

    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_0
    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/voo3d/data/Vector3;

    iget-object v9, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v8, v9}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v1, v8}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v6, v7, v8}, Lcom/voovio/voo3d/math/VectorMath;->dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v8

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
