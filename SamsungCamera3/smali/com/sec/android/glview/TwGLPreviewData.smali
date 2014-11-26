.class public Lcom/sec/android/glview/TwGLPreviewData;
.super Ljava/lang/Object;
.source "TwGLPreviewData.java"


# static fields
.field private static sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;


# instance fields
.field private mFrameAvailable:Z

.field private final mGLContext:Lcom/sec/android/glview/TwGLContext;

.field private mHeight:I

.field private mInitTexture:Z

.field private mPreviewData:[B

.field private mRGBABuffer:Ljava/nio/ByteBuffer;

.field private mSurfaceRGBATextureID:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z

    iput-object v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    iput-object v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureHeight:I

    return-void
.end method

.method private declared-synchronized checkNewFrame()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createTexture()V
    .locals 10

    const v6, 0x812f

    const/16 v2, 0x1908

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    iget-object v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    new-array v9, v5, [I

    invoke-static {v5, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v9, v1

    iput v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceRGBATextureID:I

    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceRGBATextureID:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    const/high16 v4, 0x46180000

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    const/16 v4, 0x2600

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2802

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureWidth:I

    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureHeight:I

    return-void
.end method

.method private deleteTexture()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceRGBATextureID:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLPreviewData;
    .locals 2
    .param p0    # Lcom/sec/android/glview/TwGLContext;

    const-class v1, Lcom/sec/android/glview/TwGLPreviewData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLPreviewData;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLPreviewData;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    sput-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    :cond_0
    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private release()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->deleteTexture()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v1, Lcom/sec/android/glview/TwGLPreviewData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    invoke-direct {v0}, Lcom/sec/android/glview/TwGLPreviewData;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setNewFrame()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateTexture()V
    .locals 9

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v5, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceRGBATextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v5, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    iget-object v8, p0, Lcom/sec/android/glview/TwGLPreviewData;->mRGBABuffer:Ljava/nio/ByteBuffer;

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized doUpdate()V
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->checkNewFrame()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureWidth:I

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureHeight:I

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->deleteTexture()V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->createTexture()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->updateTexture()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSurfaceCoordXOffset()F
    .locals 2

    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000

    mul-float/2addr v0, v1

    return v0
.end method

.method public getSurfaceCoordYOffset()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSurfaceRGBATextureID()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceRGBATextureID:I

    return v0
.end method

.method public isInitTexture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z

    return v0
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # [B

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iput p2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    iput-object p3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->setNewFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
