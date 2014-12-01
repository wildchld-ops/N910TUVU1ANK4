.class public Lcom/sec/android/glview/TwGLSurfaceTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLSurfaceTexture.java"


# instance fields
.field private mEffectID:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x1f40

    if-lt p4, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p4, v0, :cond_0

    iput p4, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    :goto_0
    return-void

    :pswitch_1
    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_6
    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_e
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_f
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_10
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_11
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_18
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public clearTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    return-void
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
    .locals 15

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLPreviewData;->isInitTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceRGBATextureID()I

    move-result v2

    aput v2, v0, v1

    const/high16 v0, 0x3f800000

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceCoordXOffset()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float v13, v0, v1

    move v10, v13

    const/4 v12, 0x0

    const/high16 v0, 0x3f800000

    sub-float v11, v0, v13

    const/high16 v9, 0x3f800000

    const/4 v0, 0x4

    new-array v8, v0, [F

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v1

    aput v1, v8, v0

    const/16 v0, 0x8

    new-array v6, v0, [F

    const/4 v0, 0x0

    aput v11, v6, v0

    const/4 v0, 0x1

    aput v12, v6, v0

    const/4 v0, 0x2

    aput v10, v6, v0

    const/4 v0, 0x3

    aput v12, v6, v0

    const/4 v0, 0x4

    aput v10, v6, v0

    const/4 v0, 0x5

    aput v9, v6, v0

    const/4 v0, 0x6

    aput v11, v6, v0

    const/4 v0, 0x7

    aput v9, v6, v0

    const/16 v0, 0x8

    new-array v7, v0, [F

    const/4 v0, 0x0

    aput v10, v7, v0

    const/4 v0, 0x1

    aput v12, v7, v0

    const/4 v0, 0x2

    aput v11, v7, v0

    const/4 v0, 0x3

    aput v12, v7, v0

    const/4 v0, 0x4

    aput v11, v7, v0

    const/4 v0, 0x5

    aput v9, v7, v0

    const/4 v0, 0x6

    aput v10, v7, v0

    const/4 v0, 0x7

    aput v9, v7, v0

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

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v14

    const/high16 v0, 0x3f000000

    cmpl-float v0, v14, v0

    if-lez v0, :cond_2

    const/high16 v14, 0x3f800000

    :goto_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getEffectLibInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    invoke-static {v0}, Lcom/sec/android/app/camera/SecCameraEffectLib;->setCurrentEffect(I)V

    invoke-static {}, Lcom/sec/android/app/camera/SecCameraEffectLib;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1, v8, v7, v14}, Lcom/sec/android/app/camera/SecCameraEffectLib;->drawTexture([FI[F[FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1, v8, v6, v14}, Lcom/sec/android/app/camera/SecCameraEffectLib;->drawTexture([FI[F[FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onLoad()Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceRGBATextureID()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSurfaceTexture;->initSize()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
