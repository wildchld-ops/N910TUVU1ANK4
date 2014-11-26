.class public Lcom/sec/android/glanimation/TwGLAniShutterBVertex;
.super Lcom/sec/android/glview/TwGLAniVertex;
.source "TwGLAniShutterBVertex.java"


# instance fields
.field protected final INCR_CNT_L:F

.field protected final INCR_CNT_P:F

.field private mPortrait:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # Z

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLAniVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const v0, 0x3f35c28f

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->INCR_CNT_L:F

    const v0, 0x3f2147ae

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->INCR_CNT_P:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    iput-boolean p6, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    return-void
.end method


# virtual methods
.method protected getDrawRatio()F
    .locals 3

    const/high16 v2, 0x41200000

    iget-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3f2147ae

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    :goto_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v0, -0x40000000

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3f35c28f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    div-float/2addr v0, v2

    goto :goto_1
.end method

.method protected setCustomAnimation(F)V
    .locals 21
    .param p1    # F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v19

    sub-float v10, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v19

    sub-float v3, v18, v19

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v14, v0, :cond_4

    int-to-float v0, v14

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v16, v18, v3

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v11, v0, :cond_3

    int-to-float v0, v11

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v13, v18, v10

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    int-to-float v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x42b40000

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42b40000

    add-float v7, v18, v19

    const/high16 v18, 0x3f000000

    cmpg-float v18, p1, v18

    if-gtz v18, :cond_0

    sub-float v18, v10, v13

    mul-float v18, v18, p1

    const/high16 v19, 0x40000000

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v12, v5, v18

    :goto_2
    add-float v15, v6, v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v15}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v11, v11, 0x1

    move v8, v9

    goto/16 :goto_1

    :cond_0
    sub-float v18, v10, v13

    const/high16 v19, 0x3f800000

    sub-float v19, v19, p1

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v12, v5, v18

    goto :goto_2

    :cond_1
    int-to-float v0, v14

    move/from16 v18, v0

    const/high16 v19, 0x42b40000

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42b40000

    add-float v7, v18, v19

    add-float v12, v4, v13

    const/high16 v18, 0x3f000000

    cmpg-float v18, p1, v18

    if-gtz v18, :cond_2

    sub-float v18, v3, v16

    mul-float v18, v18, p1

    const/high16 v19, 0x40000000

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v15, v2, v18

    goto/16 :goto_3

    :cond_2
    sub-float v18, v3, v16

    const/high16 v19, 0x40000000

    mul-float v18, v18, v19

    const/high16 v19, 0x3f800000

    sub-float v19, v19, p1

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v15, v2, v18

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
