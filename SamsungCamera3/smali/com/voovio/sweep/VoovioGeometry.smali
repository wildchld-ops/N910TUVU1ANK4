.class Lcom/voovio/sweep/VoovioGeometry;
.super Ljava/lang/Object;
.source "VoovioGeometry.java"


# instance fields
.field m_afVertices:[F

.field m_fbVertices:Ljava/nio/FloatBuffer;

.field m_nIndices:I

.field m_nSlices:I

.field m_nVertexBuffer:I

.field m_sbIndices:Ljava/nio/ShortBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Clip([F)I
    .locals 17
    .param p1    # [F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v4, v13, 0x3

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    if-le v1, v13, :cond_0

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x3

    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x6

    add-int/lit8 v4, v13, -0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move v5, v4

    move v3, v2

    :goto_2
    if-gez v1, :cond_5

    move v4, v5

    move v2, v3

    :goto_3
    shl-int/lit8 v13, v7, 0x10

    or-int/2addr v13, v6

    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v3, v2, 0x1

    aget v10, v13, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v2, v3, 0x1

    aget v11, v13, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v3, v2, 0x1

    aget v12, v13, v2

    const/4 v13, 0x0

    aget v13, p1, v13

    mul-float/2addr v13, v10

    const/4 v14, 0x4

    aget v14, p1, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/16 v14, 0x8

    aget v14, p1, v14

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    const/16 v14, 0xc

    aget v14, p1, v14

    add-float/2addr v13, v14

    const/4 v14, 0x3

    aget v14, p1, v14

    mul-float/2addr v14, v10

    const/4 v15, 0x7

    aget v15, p1, v15

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    const/16 v15, 0xb

    aget v15, p1, v15

    mul-float/2addr v15, v12

    add-float/2addr v14, v15

    const/16 v15, 0xf

    aget v15, p1, v15

    add-float/2addr v14, v15

    div-float v8, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v5, v4, 0x1

    aget v10, v13, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v4, v5, 0x1

    aget v11, v13, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v5, v4, 0x1

    aget v12, v13, v4

    const/4 v13, 0x0

    aget v13, p1, v13

    mul-float/2addr v13, v10

    const/4 v14, 0x4

    aget v14, p1, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/16 v14, 0x8

    aget v14, p1, v14

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    const/16 v14, 0xc

    aget v14, p1, v14

    add-float/2addr v13, v14

    const/4 v14, 0x3

    aget v14, p1, v14

    mul-float/2addr v14, v10

    const/4 v15, 0x7

    aget v15, p1, v15

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    const/16 v15, 0xb

    aget v15, p1, v15

    mul-float/2addr v15, v12

    add-float/2addr v14, v15

    const/16 v15, 0xf

    aget v15, p1, v15

    add-float/2addr v14, v15

    div-float v9, v13, v14

    float-to-double v13, v8

    const-wide/high16 v15, -0x4010000000000000L

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_1

    float-to-double v13, v8

    const-wide/high16 v15, 0x3ff0000000000000L

    cmpg-double v13, v13, v15

    if-lez v13, :cond_2

    :cond_1
    float-to-double v13, v9

    const-wide/high16 v15, -0x4010000000000000L

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_4

    float-to-double v13, v9

    const-wide/high16 v15, 0x3ff0000000000000L

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_4

    :cond_2
    if-lez v1, :cond_3

    add-int/lit8 v6, v1, -0x1

    :goto_4
    move v4, v5

    move v2, v3

    goto/16 :goto_1

    :cond_3
    move v6, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    move v2, v3

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v2, v3, -0x1

    aget v12, v13, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v3, v2, -0x1

    aget v11, v13, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v2, v3, -0x1

    aget v10, v13, v3

    const/4 v13, 0x0

    aget v13, p1, v13

    mul-float/2addr v13, v10

    const/4 v14, 0x4

    aget v14, p1, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/16 v14, 0x8

    aget v14, p1, v14

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    const/16 v14, 0xc

    aget v14, p1, v14

    add-float/2addr v13, v14

    const/4 v14, 0x3

    aget v14, p1, v14

    mul-float/2addr v14, v10

    const/4 v15, 0x7

    aget v15, p1, v15

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    const/16 v15, 0xb

    aget v15, p1, v15

    mul-float/2addr v15, v12

    add-float/2addr v14, v15

    const/16 v15, 0xf

    aget v15, p1, v15

    add-float/2addr v14, v15

    div-float v8, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v4, v5, -0x1

    aget v12, v13, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v5, v4, -0x1

    aget v11, v13, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    add-int/lit8 v4, v5, -0x1

    aget v10, v13, v5

    const/4 v13, 0x0

    aget v13, p1, v13

    mul-float/2addr v13, v10

    const/4 v14, 0x4

    aget v14, p1, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/16 v14, 0x8

    aget v14, p1, v14

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    const/16 v14, 0xc

    aget v14, p1, v14

    add-float/2addr v13, v14

    const/4 v14, 0x3

    aget v14, p1, v14

    mul-float/2addr v14, v10

    const/4 v15, 0x7

    aget v15, p1, v15

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    const/16 v15, 0xb

    aget v15, p1, v15

    mul-float/2addr v15, v12

    add-float/2addr v14, v15

    const/16 v15, 0xf

    aget v15, p1, v15

    add-float/2addr v14, v15

    div-float v9, v13, v14

    float-to-double v13, v8

    const-wide/high16 v15, -0x4010000000000000L

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_6

    float-to-double v13, v8

    const-wide/high16 v15, 0x3ff0000000000000L

    cmpg-double v13, v13, v15

    if-lez v13, :cond_7

    :cond_6
    float-to-double v13, v9

    const-wide/high16 v15, -0x4010000000000000L

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_9

    float-to-double v13, v9

    const-wide/high16 v15, 0x3ff0000000000000L

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    if-ge v1, v13, :cond_8

    add-int/lit8 v7, v1, 0x1

    :goto_5
    goto/16 :goto_3

    :cond_8
    move v7, v1

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    move v5, v4

    move v3, v2

    goto/16 :goto_2
.end method

.method public Create(Lcom/voovio/sweep/Sweep;)V
    .locals 30
    .param p1    # Lcom/voovio/sweep/Sweep;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v20, v0

    const/16 v27, 0x400

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    mul-int/lit8 v21, v27, 0x2

    mul-int/lit8 v27, v21, 0x3

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    mul-int/lit8 v27, v21, 0x6

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v23, v0

    sget-boolean v27, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    if-eqz v27, :cond_1

    invoke-static/range {v24 .. v24}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v27

    if-nez v27, :cond_0

    invoke-static/range {v24 .. v24}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v24

    :cond_0
    invoke-static/range {v23 .. v23}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v27

    if-nez v27, :cond_1

    invoke-static/range {v23 .. v23}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v23

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v13, v27, v28

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v14, v27, v28

    sget-boolean v27, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    if-eqz v27, :cond_2

    const/4 v7, 0x0

    :goto_0
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000

    div-float v12, v27, v28

    const/high16 v27, 0x3f800000

    const/high16 v28, 0x40000000

    mul-float v28, v28, v7

    add-float v27, v27, v28

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x40000000

    div-float v8, v27, v28

    const/high16 v27, 0x3f000000

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f000000

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    const v29, 0x3c8efa35

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->tan(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    div-float v6, v27, v28

    move v4, v6

    div-float v27, v12, v4

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->atan(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v9, v0

    mul-float v27, v12, v12

    mul-float v28, v4, v4

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v10, v0

    const/16 v16, 0x0

    neg-float v11, v9

    const/high16 v27, 0x40000000

    mul-float v27, v27, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v5, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    new-array v2, v0, [F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    new-array v3, v0, [F

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v15, v0, :cond_3

    const/16 v19, 0x0

    :goto_2
    const/16 v27, 0x2

    move/from16 v0, v19

    move/from16 v1, v27

    if-lt v0, v1, :cond_4

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v15, 0x0

    const/16 v19, 0x1

    :goto_3
    mul-int/lit8 v27, v21, 0x3

    move/from16 v0, v27

    if-lt v15, v0, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    mul-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/VoovioGeometry;->m_nIndices:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nIndices:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [S

    move-object/from16 v18, v0

    const/16 v16, 0x0

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v15, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nIndices:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    const v7, 0x3dcccccd

    goto/16 :goto_0

    :cond_3
    float-to-double v0, v11

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->tan(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v4, v27

    mul-float v27, v8, v10

    mul-float v28, v26, v26

    mul-float v29, v4, v4

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    aput v27, v2, v15

    int-to-float v0, v15

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    aput v27, v3, v15

    add-float/2addr v11, v5

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_4
    neg-float v11, v9

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v15, v0, :cond_5

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v17, v16, 0x1

    int-to-float v0, v15

    move/from16 v27, v0

    aput v27, v25, v16

    add-int/lit8 v16, v17, 0x1

    float-to-double v0, v11

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v10

    sub-float v27, v27, v4

    aput v27, v25, v17

    add-int/lit8 v17, v16, 0x1

    if-nez v19, :cond_8

    aget v27, v2, v15

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    :goto_6
    aput v27, v25, v16

    add-int/lit8 v16, v17, 0x1

    float-to-double v0, v11

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v10

    aput v27, v25, v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v27, v0

    if-nez v27, :cond_a

    :cond_6
    add-int/lit8 v17, v16, 0x1

    aget v27, v3, v15

    aput v27, v25, v16

    add-int/lit8 v16, v17, 0x1

    if-nez v19, :cond_9

    add-float v27, v14, v7

    :goto_7
    aput v27, v25, v17

    :cond_7
    :goto_8
    add-float/2addr v11, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    aget v27, v2, v15

    goto :goto_6

    :cond_9
    neg-float v0, v7

    move/from16 v27, v0

    goto :goto_7

    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v27, v0

    const/16 v28, 0x6

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    add-int/lit8 v17, v16, 0x1

    if-nez v19, :cond_b

    add-float v27, v14, v7

    :goto_9
    aput v27, v25, v16

    add-int/lit8 v16, v17, 0x1

    const/high16 v27, 0x3f800000

    aget v28, v3, v15

    sub-float v27, v27, v28

    mul-float v27, v27, v13

    aput v27, v25, v17

    goto :goto_8

    :cond_b
    neg-float v0, v7

    move/from16 v27, v0

    goto :goto_9

    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    add-int/lit8 v17, v16, 0x1

    const/high16 v27, 0x3f800000

    aget v28, v3, v15

    sub-float v27, v27, v28

    aput v27, v25, v16

    add-int/lit8 v16, v17, 0x1

    if-nez v19, :cond_d

    neg-float v0, v7

    move/from16 v27, v0

    :goto_a
    aput v27, v25, v17

    goto :goto_8

    :cond_d
    add-float v27, v14, v7

    goto :goto_a

    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    add-int/lit8 v17, v16, 0x1

    if-nez v19, :cond_f

    neg-float v0, v7

    move/from16 v27, v0

    :goto_b
    aput v27, v25, v16

    add-int/lit8 v16, v17, 0x1

    aget v27, v3, v15

    mul-float v27, v27, v13

    aput v27, v25, v17

    goto :goto_8

    :cond_f
    add-float v27, v14, v7

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    move-object/from16 v27, v0

    aget v28, v25, v19

    aput v28, v27, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    move-object/from16 v27, v0

    add-int/lit8 v28, v15, 0x1

    add-int/lit8 v29, v19, 0x1

    aget v29, v25, v29

    aput v29, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_afVertices:[F

    move-object/from16 v27, v0

    add-int/lit8 v28, v15, 0x2

    add-int/lit8 v29, v19, 0x2

    aget v29, v25, v29

    aput v29, v27, v28

    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v19, v19, 0x6

    goto/16 :goto_3

    :cond_11
    add-int/lit8 v17, v16, 0x1

    int-to-short v0, v15

    move/from16 v27, v0

    aput-short v27, v18, v16

    add-int/lit8 v16, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    add-int v27, v27, v15

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v18, v17

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4
.end method

.method public CreateVertexBuffer()V
    .locals 5

    const v4, 0x8892

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lcom/voovio/sweep/VoovioGeometry;->m_nVertexBuffer:I

    if-nez v1, :cond_0

    new-array v0, v3, [I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/voovio/sweep/VoovioGeometry;->m_nVertexBuffer:I

    iget v1, p0, Lcom/voovio/sweep/VoovioGeometry;->m_nVertexBuffer:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    const v3, 0x88e4

    invoke-static {v4, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_0
    return-void
.end method

.method public DestroyVertexBuffer(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lcom/voovio/sweep/VoovioGeometry;->m_nVertexBuffer:I

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-array v0, v3, [I

    iget v1, p0, Lcom/voovio/sweep/VoovioGeometry;->m_nVertexBuffer:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    :cond_0
    iput v2, p0, Lcom/voovio/sweep/VoovioGeometry;->m_nVertexBuffer:I

    :cond_1
    return-void
.end method
