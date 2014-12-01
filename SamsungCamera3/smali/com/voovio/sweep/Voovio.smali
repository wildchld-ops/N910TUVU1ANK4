.class Lcom/voovio/sweep/Voovio;
.super Ljava/lang/Object;
.source "Voovio.java"


# static fields
.field static MIPMAPS:Z

.field static ROTATION_LEFT:I

.field static ROTATION_RIGHT:I

.field static STATE_DECODING:I

.field static STATE_ERROR:I

.field static STATE_READY:I

.field static STATE_VOID:I


# instance fields
.field m_aTransitions:[Lcom/voovio/sweep/Transition;

.field m_bCreated:Z

.field m_baImage:[B

.field m_baSize:I

.field m_fF:F

.field m_fFOV:F

.field m_fRenderMatrix:[F

.field m_nDistance:I

.field m_nHeight:I

.field m_nHighResTextureID:I

.field m_nId:I

.field m_nImageHeight:I

.field m_nImageWidth:I

.field m_nLowResTextureID:I

.field m_nState:I

.field m_nTargetState:I

.field m_nWidth:I

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

.field m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

.field m_vCamDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/Voovio;->STATE_ERROR:I

    sput v1, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    sput v2, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    sput v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    sput v2, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    sput v3, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;FIIII)V
    .locals 5

    const/high16 v2, 0x3f000000

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iput-object p1, p0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput p3, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    iput p4, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    iput p5, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    iput p6, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    iput-boolean v3, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    iput p2, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iget v0, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    mul-float/2addr v1, v2

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    neg-float v1, v1

    invoke-direct {v0, v1, v4, v4}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1, v4, v4}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/voovio/sweep/Transition;

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    return-void
.end method


# virtual methods
.method public AssignHighResTexture(I)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    return-void
.end method

.method public ComputeNearestPointInsideVolume()V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v8, 0x3dcccccd

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v0, v3, v6, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v2, v3, v6, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    :goto_0
    invoke-static {v0}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    iget-object v1, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_0
.end method

.method public CreateHighResTexture(Landroid/graphics/Bitmap;)V
    .locals 18

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_4

    const/16 v8, 0x1401

    const/16 v3, 0x1908

    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v1, 0x0

    aget v1, v16, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/16 v6, 0x2801

    sget-boolean v1, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x2703

    :goto_2
    int-to-float v1, v1

    invoke-static {v2, v6, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v6, 0x46180400

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v6, 0x47012f00

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v6, 0x47012f00

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    sget-boolean v1, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    if-nez v1, :cond_6

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_3
    sget-boolean v1, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    goto :goto_0

    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_2

    const v8, 0x8363

    const/16 v3, 0x1907

    goto :goto_1

    :cond_5
    const/16 v1, 0x2601

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v5}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v5

    :cond_8
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v7, v3

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move v14, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    goto :goto_3
.end method

.method public CreateLowResTexture(Landroid/graphics/Bitmap;)V
    .locals 18

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_3

    const/16 v8, 0x1401

    const/16 v3, 0x1908

    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v1, 0x0

    aget v1, v16, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v6, 0x46180400

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v6, 0x46180400

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v6, 0x47012f00

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v6, 0x47012f00

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    sget-boolean v1, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    if-nez v1, :cond_4

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_2
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_2

    const v8, 0x8363

    const/16 v3, 0x1907

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v5}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v5

    :cond_6
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v7, v3

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move v14, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    goto :goto_2
.end method

.method public DestroyHighResTexture(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_2

    new-array v0, v3, [I

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    :goto_0
    iput v2, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    :cond_1
    iput-boolean v2, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    return-void

    :cond_2
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    invoke-static {v1}, Lcom/voovio/sweep/TexturePool;->returnTexture(I)V

    goto :goto_0
.end method

.method public DestroyLowResTexture(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-array v0, v3, [I

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    iput v2, p0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    :cond_1
    return-void
.end method

.method public IsTransitionRegistered(Lcom/voovio/sweep/Transition;I)Z
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v0, p2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public RegisterTransition(Lcom/voovio/sweep/Transition;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/voovio/sweep/Voovio;->IsTransitionRegistered(Lcom/voovio/sweep/Transition;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aput-object p1, v0, p2

    :cond_0
    return-void
.end method

.method public UnRegisterTransition(Lcom/voovio/sweep/Transition;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public UpdateHighResTexture(Landroid/graphics/Bitmap;)V
    .locals 8

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget v2, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v7, v2, :cond_3

    const/16 v6, 0x1401

    const/16 v5, 0x1908

    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    iget v2, p0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move v2, v1

    move v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    sget-boolean v1, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v7, v2, :cond_2

    const v6, 0x8363

    const/16 v5, 0x1907

    goto :goto_1
.end method

.method public clone()Lcom/voovio/sweep/Voovio;
    .locals 7

    new-instance v0, Lcom/voovio/sweep/Voovio;

    const/4 v1, 0x0

    iget v2, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iget v3, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    iget v4, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    iget v5, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    iget v6, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    invoke-direct/range {v0 .. v6}, Lcom/voovio/sweep/Voovio;-><init>(Lcom/voovio/sweep/Sweep;FIIII)V

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iget-object v1, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/sweep/Voovio;->clone()Lcom/voovio/sweep/Voovio;

    move-result-object v0

    return-object v0
.end method

.method public getRotations()I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v5, v5, v7

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v5, v7

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v5, v5, v8

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v5, v8

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v1

    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    cmpl-float v5, v0, v6

    if-gtz v5, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    cmpg-float v5, v1, v6

    if-gez v5, :cond_4

    :cond_3
    sget v5, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    or-int/2addr v4, v5

    :cond_4
    if-eqz v2, :cond_5

    cmpg-float v5, v0, v6

    if-ltz v5, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    cmpl-float v5, v1, v6

    if-lez v5, :cond_7

    :cond_6
    sget v5, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    or-int/2addr v4, v5

    :cond_7
    return v4
.end method
