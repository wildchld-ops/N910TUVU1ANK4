.class public abstract Lcom/sec/android/glview/TwGLAniTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLAniTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLAniTexture"


# instance fields
.field protected GRID_SIZE:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    return-void
.end method


# virtual methods
.method protected declared-synchronized initBuffers()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized initCoordBuffer()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    :try_start_0
    iget v6, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v5, v6, :cond_1

    const/4 v4, 0x0

    move v1, v0

    :goto_1
    :try_start_1
    iget v6, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-gt v4, v6, :cond_0

    int-to-float v6, v4

    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v2, v6, v7

    int-to-float v6, v5

    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v3, v6, v7

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    :try_start_2
    aput v2, v6, v1

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v0, 0x1

    :try_start_3
    aput v3, v6, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-gt v5, v6, :cond_3

    iget v4, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v0

    :goto_3
    if-ltz v4, :cond_2

    int-to-float v6, v4

    :try_start_5
    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v2, v6, v7

    int-to-float v6, v5

    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v3, v6, v7

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v0, v1, 0x1

    :try_start_6
    aput v2, v6, v1

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v1, v0, 0x1

    :try_start_7
    aput v3, v6, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    goto :goto_2

    :cond_3
    :try_start_8
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit p0

    throw v6

    :catchall_1
    move-exception v6

    move v0, v1

    goto :goto_4
.end method

.method public declared-synchronized onDraw()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-eqz v0, :cond_0

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
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "TwGLAniTexture"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniTexture;->initBuffers()V

    :cond_3
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    :cond_4
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized setVertices()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v12, :cond_0

    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x6

    new-array v12, v12, [B

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    :cond_0
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    if-nez v12, :cond_1

    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [F

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-ge v11, v12, :cond_3

    const/4 v10, 0x0

    move v1, v0

    move v3, v2

    :goto_1
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-ge v10, v12, :cond_2

    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    int-to-byte v4, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v5, v12

    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    int-to-byte v6, v12

    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v7, v12

    int-to-float v12, v10

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v8, v12, v13

    int-to-float v12, v11

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v9, v12, v13

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    aput-byte v4, v12, v3

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v5, v12, v2

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    aput-byte v7, v12, v3

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v12, v2

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    aput-byte v7, v12, v3

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v6, v12, v2

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    aput v8, v12, v1

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    aput v9, v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    move v0, v1

    move v2, v3

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method
