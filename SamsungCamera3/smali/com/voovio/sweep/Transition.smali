.class public Lcom/voovio/sweep/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field m_aPortals:[[Lcom/voovio/sweep/Portal;

.field m_aTR0:[Lcom/voovio/sweep/Transform;

.field m_aTR1:[Lcom/voovio/sweep/Transform;

.field m_aVoovios:[Lcom/voovio/sweep/Voovio;

.field m_fAngleBetweenPortalNormals:F

.field m_fOverlapping:F

.field m_fRotationAngle:F

.field m_fTurnDirection:F

.field m_fWalkingSteps:F

.field m_oSweep:Lcom/voovio/sweep/Sweep;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 7
    .param p1    # Lcom/voovio/sweep/Sweep;

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    new-array v0, v3, [[Lcom/voovio/sweep/Portal;

    new-array v1, v3, [Lcom/voovio/sweep/Portal;

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Lcom/voovio/sweep/Portal;

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iput v6, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    new-array v0, v3, [Lcom/voovio/sweep/Voovio;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    new-array v0, v3, [Lcom/voovio/sweep/Transform;

    new-instance v1, Lcom/voovio/sweep/Transform;

    invoke-direct {v1}, Lcom/voovio/sweep/Transform;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/voovio/sweep/Transform;

    invoke-direct {v1}, Lcom/voovio/sweep/Transform;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    new-array v0, v3, [Lcom/voovio/sweep/Transform;

    new-instance v1, Lcom/voovio/sweep/Transform;

    invoke-direct {v1}, Lcom/voovio/sweep/Transform;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/voovio/sweep/Transform;

    invoke-direct {v1}, Lcom/voovio/sweep/Transform;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    iput v6, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    iput v6, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    iput v6, p0, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    return-void
.end method

.method private GetIntermediatePoint(Lcom/voovio/voo3d/data/Vector3;FLcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 22
    .param p1    # Lcom/voovio/voo3d/data/Vector3;
    .param p2    # F
    .param p3    # Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v14, v17, v18

    const/high16 v17, 0x42960000

    cmpl-float v17, p2, v17

    if-ltz v17, :cond_2

    const/high16 v17, 0x42700000

    sub-float v8, p2, v17

    :goto_0
    const/high16 v17, 0x3f000000

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3c8efa35

    sub-float v11, v17, v18

    const/high16 v17, 0x3f000000

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v10, v0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/16 v4, 0x8

    const/4 v15, 0x0

    neg-float v0, v11

    move/from16 v17, v0

    cmpg-float v17, v9, v17

    if-gez v17, :cond_3

    or-int/2addr v15, v5

    :cond_0
    :goto_1
    neg-float v0, v12

    move/from16 v17, v0

    cmpg-float v17, v10, v17

    if-gez v17, :cond_4

    or-int/2addr v15, v4

    :cond_1
    :goto_2
    if-ne v15, v5, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    neg-float v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    :goto_3
    return-object p3

    :cond_2
    const v17, 0x3e4ccccd

    mul-float v8, v17, p2

    goto/16 :goto_0

    :cond_3
    cmpl-float v17, v9, v11

    if-lez v17, :cond_0

    or-int/2addr v15, v6

    goto :goto_1

    :cond_4
    cmpl-float v17, v10, v12

    if-lez v17, :cond_1

    or-int/2addr v15, v7

    goto :goto_2

    :cond_5
    if-ne v15, v6, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    float-to-double v0, v11

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_3

    :cond_6
    if-ne v15, v4, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    neg-float v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_3

    :cond_7
    if-ne v15, v7, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    float-to-double v0, v12

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_3

    :cond_8
    if-eqz v15, :cond_d

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_a

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v17, v0

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    :cond_9
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v13

    invoke-static/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    goto/16 :goto_3

    :cond_a
    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v17, v0

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_4

    :cond_b
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v17, v0

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_4

    :cond_c
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v17, v0

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    iget v0, v14, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_3
.end method

.method private computeAngleBetweenPortalNormals()F
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Lcom/voovio/geometry/Point;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v5, v5, v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v2, v4, v5}, Lcom/voovio/geometry/Point;-><init>(FF)V

    new-instance v3, Lcom/voovio/geometry/Point;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v7

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v5, v5, v7

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v3, v4, v5}, Lcom/voovio/geometry/Point;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/voovio/geometry/Point;->dotPerp(Lcom/voovio/geometry/Point;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/high16 v1, -0x40800000

    :goto_0
    invoke-virtual {v2, v3}, Lcom/voovio/geometry/Point;->getAngle(Lcom/voovio/geometry/Point;)F

    move-result v4

    mul-float v0, v1, v4

    return v0

    :cond_0
    const/high16 v1, 0x3f800000

    goto :goto_0
.end method

.method private computeOverlapping()V
    .locals 8

    const/4 v6, 0x0

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    iget v6, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    iget-object v5, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    const/high16 v5, 0x3f000000

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    int-to-float v6, v6

    mul-float v2, v5, v6

    iget v5, v4, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget-object v6, p0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v6, v6, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    add-float v3, v5, v6

    const/high16 v5, 0x40000000

    div-float v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v1, v5, v6

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v1, v5

    const/high16 v5, 0x44800000

    mul-float/2addr v5, v0

    div-float/2addr v5, v1

    iput v5, p0, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    :goto_0
    return-void

    :cond_0
    iput v6, p0, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    const/high16 v5, -0x40800000

    iput v5, p0, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    goto :goto_0
.end method


# virtual methods
.method public AddVoovio(Lcom/voovio/sweep/Voovio;I)V
    .locals 1
    .param p1    # Lcom/voovio/sweep/Voovio;
    .param p2    # I

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aput-object p1, v0, p2

    invoke-virtual {p1, p0, p2}, Lcom/voovio/sweep/Voovio;->RegisterTransition(Lcom/voovio/sweep/Transition;I)V

    goto :goto_0
.end method

.method public FromAngle(F)V
    .locals 1
    .param p1    # F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/Transition;->FromAngle(FF)V

    return-void
.end method

.method public FromAngle(FF)V
    .locals 41
    .param p1    # F
    .param p2    # F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v27, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    move/from16 v37, v0

    move/from16 v0, v37

    neg-float v14, v0

    const/high16 v37, 0x3f000000

    move-object/from16 v0, v27

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v22, v37, v38

    move-object/from16 v0, v27

    iget v15, v0, Lcom/voovio/sweep/Voovio;->m_fF:F

    add-float v23, v15, v20

    mul-float v37, v23, v23

    mul-float v38, v22, v22

    add-float v37, v37, v38

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v21, v0

    const/high16 v37, 0x40000000

    div-float v38, v22, v15

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->atan(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    const v38, 0x42652ee0

    mul-float v16, v37, v38

    const/high16 v37, 0x40000000

    div-float v38, v22, v23

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->atan(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    const v38, 0x42652ee0

    mul-float v18, v37, v38

    sub-float v19, v18, v16

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/16 v37, 0x0

    cmpl-float v37, p1, v37

    if-ltz v37, :cond_2

    const/high16 v12, 0x3f800000

    :goto_0
    const/high16 v37, 0x42a00000

    div-float v37, v37, v21

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v10, v0

    sub-float v37, v18, v10

    cmpl-float v37, v11, v37

    if-lez v37, :cond_0

    sub-float v11, v18, v10

    :cond_0
    add-float v37, v19, v10

    cmpg-float v37, v11, v37

    if-gez v37, :cond_1

    add-float v11, v19, v10

    :cond_1
    mul-float p1, v12, v11

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v33, v0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v34

    sget-object v37, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v4, Lcom/voovio/sweep/Transform;

    invoke-direct {v4}, Lcom/voovio/sweep/Transform;-><init>()V

    move-object/from16 v0, v30

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v39, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v4, v0, v1, v2}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Lcom/voovio/sweep/Transform;->Init()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Lcom/voovio/sweep/Transform;->Init()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    const/16 v38, 0x0

    neg-float v0, v12

    move/from16 v39, v0

    mul-float v39, v39, v11

    const/16 v40, 0x0

    invoke-virtual/range {v37 .. v40}, Lcom/voovio/sweep/Transform;->Rotate(FFF)V

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v36

    move-object/from16 v0, v30

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v37, v0

    move/from16 v0, v37

    neg-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v39, v0

    move/from16 v0, v39

    neg-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v36 .. v39}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    const v37, 0x3c8efa35

    mul-float v37, v37, p1

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x3f800000

    sub-float v37, v37, v38

    mul-float v13, v20, v37

    const v37, 0x3c8efa35

    mul-float v37, v37, p1

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    mul-float v17, v20, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v36

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v38, v0

    add-float v38, v38, v13

    move-object/from16 v0, v36

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v39, v0

    add-float v39, v39, p2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v40, v0

    add-float v40, v40, v17

    invoke-virtual/range {v37 .. v40}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    invoke-static/range {v36 .. v36}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/voovio/sweep/Transform;->TransformWith(Lcom/voovio/sweep/Transform;)V

    const/16 v24, 0x0

    :goto_1
    const/16 v37, 0x2

    move/from16 v0, v24

    move/from16 v1, v37

    if-lt v0, v1, :cond_3

    add-float v37, v20, v14

    const v38, 0x3c8efa35

    mul-float v38, v38, p1

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    sub-float v13, v37, v20

    add-float v37, v20, v14

    const v38, 0x3c8efa35

    mul-float v38, v38, p1

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    mul-float v17, v37, v38

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v8, v0, [F

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    move/from16 v38, v0

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v38, v0

    aput v38, v8, v37

    const/16 v37, 0x1

    aput v13, v8, v37

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v9, v0, [F

    const/16 v37, 0x0

    const/16 v38, 0x0

    aput v38, v9, v37

    const/16 v37, 0x1

    aput v17, v9, v37

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v5, v0, [F

    const/16 v37, 0x0

    const/16 v38, 0x0

    aput v38, v5, v37

    const/16 v37, 0x1

    aput p2, v5, v37

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v7, v0, [F

    const/16 v37, 0x0

    const/16 v38, 0x0

    aput v38, v7, v37

    const/16 v37, 0x1

    mul-float v38, v12, v11

    aput v38, v7, v37

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v29

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v32

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v28

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v31

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v35

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v25

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v26

    const/16 v24, 0x0

    :goto_2
    const/16 v37, 0x2

    move/from16 v0, v24

    move/from16 v1, v37

    if-lt v0, v1, :cond_4

    invoke-static/range {v29 .. v29}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v32 .. v32}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v28 .. v28}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v31 .. v31}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v35 .. v35}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v25 .. v25}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static/range {v26 .. v26}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static/range {v34 .. v34}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    const v37, 0x3c8efa35

    mul-float v37, v37, p1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeOverlapping()V

    return-void

    :cond_2
    const/high16 v12, -0x40800000

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    aget-object v37, v37, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v38, v0

    aget-object v38, v38, v24

    invoke-virtual/range {v37 .. v38}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    aget-object v37, v37, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-object v38, v38, v39

    invoke-virtual/range {v37 .. v38}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    aget v37, v8, v24

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    aget v37, v9, v24

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    sget-object v37, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    aget v37, v5, v24

    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    move-object/from16 v0, v29

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v37, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v38, v0

    add-float v37, v37, v38

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v38, v0

    add-float v37, v37, v38

    move-object/from16 v0, v29

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v38, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v39, v0

    add-float v38, v38, v39

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v39, v0

    add-float v38, v38, v39

    move-object/from16 v0, v29

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v39, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v40, v0

    add-float v39, v39, v40

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v40, v0

    add-float v39, v39, v40

    move-object/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget-object v0, v4, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    aget v37, v7, v24

    move/from16 v0, v37

    neg-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->rotationY(F)V

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, v4, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    aget-object v37, v37, v24

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    aget-object v37, v37, v24

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    aget-object v37, v37, v24

    aget v38, v6, v24

    invoke-virtual/range {v37 .. v38}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v37, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual/range {v25 .. v25}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual/range {v26 .. v26}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    aget-object v37, v37, v24

    sget v38, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/voovio/sweep/Portal;->m_nType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    aget-object v37, v37, v24

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    aget-object v37, v37, v24

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    aget-object v37, v37, v24

    aget v38, v6, v24

    invoke-virtual/range {v37 .. v38}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    :array_0
    .array-data 4
        0x42480000
        0x41200000
    .end array-data
.end method

.method public FromTemplate(Lcom/voovio/sweep/Template;)V
    .locals 24
    .param p1    # Lcom/voovio/sweep/Template;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x442a8000

    div-float v4, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v19, v0

    const/high16 v20, 0x42480000

    cmpl-float v19, v19, v20

    if-nez v19, :cond_0

    const/high16 v19, 0x3f800000

    cmpl-float v19, v4, v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/voovio/sweep/Template;->clone(F)Lcom/voovio/sweep/Template;

    move-result-object p1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    sget-object v19, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v3, Lcom/voovio/sweep/Transform;

    invoke-direct {v3}, Lcom/voovio/sweep/Transform;-><init>()V

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    const/4 v5, 0x0

    :goto_0
    const/16 v19, 0x2

    move/from16 v0, v19

    if-lt v5, v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    const/16 v19, 0x2

    move/from16 v0, v19

    if-lt v5, v0, :cond_3

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v15

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v11

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v14

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v9

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v10

    const/4 v5, 0x0

    :goto_2
    const/16 v19, 0x2

    move/from16 v0, v19

    if-lt v5, v0, :cond_4

    invoke-static {v12}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v15}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v11}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v14}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v9}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static {v10}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeOverlapping()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/voovio/sweep/Transform;->Init()V

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAngulo:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/voovio/sweep/Transform;->Rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fOffset:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v8, v7}, Lcom/voovio/voo3d/data/Vector3;->add(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAvance:F

    move/from16 v20, v0

    iget v0, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAltura:F

    move/from16 v21, v0

    iget v0, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v22, v0

    aget-object v22, v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fLateral:F

    move/from16 v22, v0

    iget v0, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-virtual/range {v19 .. v22}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/voovio/sweep/Transform;->TransformWith(Lcom/voovio/sweep/Transform;)V

    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v8}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAvance:[F

    move-object/from16 v19, v0

    aget v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fLateral:[F

    move-object/from16 v19, v0

    aget v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    sget-object v19, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAltura:[F

    move-object/from16 v19, v0

    aget v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    iget v0, v15, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    iget v0, v15, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    iget v0, v15, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget-object v0, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    move-object/from16 v20, v0

    aget v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v9}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    invoke-virtual {v9, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v10}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    sget v20, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/sweep/Portal;->m_nType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    move-object/from16 v20, v0

    aget v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method public FromTranslation(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 12
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v3, v9, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v7, v9, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/sweep/Transform;

    invoke-direct {v0}, Lcom/voovio/sweep/Transform;-><init>()V

    iget v9, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/4 v10, 0x0

    iget v11, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v0, v9, v10, v11}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/voovio/sweep/Transform;->Init()V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/voovio/sweep/Transform;->Init()V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, p1}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v9, 0x2

    if-lt v1, v9, :cond_0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-result v5

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v2

    invoke-virtual {v8, v7}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x2

    if-lt v1, v9, :cond_1

    invoke-static {v6}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v4}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v8}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-direct {p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v9

    iput v9, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iget v9, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iput v9, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return-void

    :cond_0
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v6, v5, v4}, Lcom/voovio/sweep/Transition;->GetIntermediatePoint(Lcom/voovio/voo3d/data/Vector3;FLcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    :goto_2
    iget-object v9, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v9, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v8}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    const/high16 v10, 0x42480000

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v9}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    invoke-virtual {v2, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    sget v10, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    iput v10, v9, Lcom/voovio/sweep/Portal;->m_nType:I

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v8}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    const/high16 v10, 0x41200000

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v11, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2
.end method

.method public RemoveVoovio(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/Voovio;->UnRegisterTransition(Lcom/voovio/sweep/Transition;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public RemoveVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Voovio;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/voovio/sweep/Transition;->RemoveVoovio(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method TranslateRearPortal(Lcom/voovio/sweep/Portal;)V
    .locals 7
    .param p1    # Lcom/voovio/sweep/Portal;

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v0, v3, v5

    iget-object v3, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v5

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v3, v4}, Lcom/voovio/sweep/Portal;->TestGoAcross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iget-object v3, p1, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    const v3, 0x3e4ccccd

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    iget-object v3, p1, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    invoke-virtual {v3, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v3, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v3, v3, v5

    aget-object v3, v3, v6

    invoke-virtual {v3, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_0
    return-void
.end method

.method TranslateRearPortalToVoovioOrigin()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v0, v2, v6

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iget-object v2, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v3, 0x3dcccccd

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v2, v2, v6

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void
.end method

.method public clone()Lcom/voovio/sweep/Transition;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/voovio/sweep/Transition;

    invoke-direct {v0}, Lcom/voovio/sweep/Transition;-><init>()V

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iput-object v1, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Transform;->Copy(Lcom/voovio/sweep/Transform;)V

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Transform;->Copy(Lcom/voovio/sweep/Transform;)V

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Transform;->Copy(Lcom/voovio/sweep/Transform;)V

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Transform;->Copy(Lcom/voovio/sweep/Transform;)V

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/sweep/Transition;->clone()Lcom/voovio/sweep/Transition;

    move-result-object v0

    return-object v0
.end method

.method public getAngleBetweenPortalNormals()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    return v0
.end method

.method public getRotationAngle()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return v0
.end method

.method public getWalkingSteps()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    return v0
.end method

.method public isRotation()Z
    .locals 2

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTranslation()Z
    .locals 2

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotationAngle(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return-void
.end method

.method public setWalkingSteps(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    return-void
.end method
