.class public Lcom/sec/android/glview/TwGLQuadrangle;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLQuadrangle.java"


# static fields
.field private static final DEFAULT_THICKNESS:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "TwGLQuadrangle"

.field public static final TYPE_RECTANGLE_CORRECTION_STROKE:I = 0x2

.field public static final TYPE_RECTANGLE_FILL:I = 0x3

.field public static final TYPE_RECTANGLE_STROKE:I = 0x1


# instance fields
.field private mColor:[F

.field private mObjPointSize:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

.field private mObjSampler:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

.field private mPoints:[F

.field private mRectangleType:I

.field private mThickness:[F

.field private mThicknessBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    iput v1, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mRectangleType:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjSampler:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjPointSize:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    iput v3, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mRectangleType:I

    invoke-virtual {p0, p6}, Lcom/sec/android/glview/TwGLQuadrangle;->setColor(I)V

    cmpg-float v0, p7, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput v2, v0, v4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput p7, v0, v4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput p7, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput p7, v0, v3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput p7, v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIFII)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    iput v1, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mRectangleType:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjSampler:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjPointSize:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    iput p8, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mRectangleType:I

    invoke-virtual {p0, p6}, Lcom/sec/android/glview/TwGLQuadrangle;->setColor(I)V

    cmpg-float v0, p7, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput v2, v0, v4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput p7, v0, v3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput p7, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    aput p7, v0, v4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput p7, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized clearBuffers()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(FF)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getColor()I
    .locals 6

    const/high16 v5, 0x437f0000

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getPoints()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    return-object v0
.end method

.method public getThickness()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->clearBuffers()V

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initSize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onDraw()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->setVertices()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v0, p0, Lcom/sec/android/glview/TwGLTexture;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjSampler:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getProjMatrix()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjPointSize:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjPointSize:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mRectangleType:I

    if-ne v0, v7, :cond_5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :cond_5
    iget v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mRectangleType:I

    if-ne v0, v6, :cond_8

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :goto_2
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjPointSize:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    :cond_7
    const-string v0, "TwGLQuadrangle"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->initBuffers()V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected declared-synchronized onLoad()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->initSize()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->initBuffers()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgram;->getProgramID()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLTexture;->mProgramID:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "a_pointsize"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjPointSize:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "tex_sampler"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mObjSampler:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setColor(I)V
    .locals 4

    const/high16 v3, 0x437f0000

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mColor:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setPoint(FFFFFFI)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    mul-int/lit8 v1, p7, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    mul-int/lit8 v1, p7, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    invoke-virtual {p0, p5, p6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->initBuffers()V

    return-void
.end method

.method public setPoints([FFFFF)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    aget v1, p1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    aget v1, p1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    aget v1, p1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    aget v1, p1, v5

    aput v1, v0, v5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    aget v1, p1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v1, 0x7

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v0, v1

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->initBuffers()V

    return-void
.end method

.method public setThickness(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLQuadrangle;->initBuffers()V

    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/sec/android/glview/TwGLQuadrangle;->mPoints:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
