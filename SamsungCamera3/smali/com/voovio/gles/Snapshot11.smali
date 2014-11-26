.class public Lcom/voovio/gles/Snapshot11;
.super Ljava/lang/Object;
.source "Snapshot11.java"


# instance fields
.field private m_aTexCoords:[F

.field public m_aTextureIDs:[I

.field private m_bbIndices:Ljava/nio/ByteBuffer;

.field private m_fbTexCoords:Ljava/nio/FloatBuffer;

.field private m_fbVertices:Ljava/nio/FloatBuffer;

.field private m_oDepthRenderBufferIDs:[I

.field private m_oFrameBuffersIDs:[I

.field private m_oP:[F

.field public m_szFrame:Lcom/voovio/geometry/Point;

.field public m_szTexture:Lcom/voovio/geometry/Point;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/voovio/geometry/Point;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_szTexture:Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_fbVertices:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_bbIndices:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    iput-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_oDepthRenderBufferIDs:[I

    iput-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_oFrameBuffersIDs:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_oP:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    return-void
.end method

.method private UpdateTextureCoordinates()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v4, 0x3f000000

    const/high16 v5, 0x3f800000

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_szTexture:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    div-float v0, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_szTexture:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    aput v0, v2, v6

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    const/4 v3, 0x2

    sub-float v4, v5, v0

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    const/4 v3, 0x4

    sub-float v4, v5, v0

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    const/4 v3, 0x5

    sub-float v4, v5, v1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    const/4 v3, 0x6

    aput v0, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    const/4 v3, 0x7

    sub-float v4, v5, v1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_aTexCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public BindFramebuffer()V
    .locals 3

    const v0, 0x8d40

    iget-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_oFrameBuffersIDs:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    return-void
.end method

.method public Create()V
    .locals 15

    const/16 v0, 0xc

    new-array v14, v0, [F

    fill-array-data v14, :array_0

    array-length v0, v14

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_fbVertices:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_fbVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-direct {p0}, Lcom/voovio/gles/Snapshot11;->UpdateTextureCoordinates()V

    const/4 v0, 0x6

    new-array v10, v0, [B

    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-byte v1, v10, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    aput-byte v1, v10, v0

    const/4 v0, 0x4

    const/4 v1, 0x2

    aput-byte v1, v10, v0

    const/4 v0, 0x5

    const/4 v1, 0x3

    aput-byte v1, v10, v0

    array-length v0, v10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_bbIndices:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_bbIndices:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_bbIndices:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glGenTextures(I[II)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/high16 v2, 0x46180000

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/high16 v2, 0x46180000

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1907

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v4, v4, Lcom/voovio/geometry/Point;->y:F

    float-to-int v4, v4

    const/4 v5, 0x0

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_oDepthRenderBufferIDs:[I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_oDepthRenderBufferIDs:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11Ext;->glGenRenderbuffersOES(I[II)V

    const v0, 0x8d41

    iget-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_oDepthRenderBufferIDs:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES11Ext;->glBindRenderbufferOES(II)V

    const v0, 0x8d41

    const v1, 0x81a5

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES11Ext;->glRenderbufferStorageOES(IIII)V

    const v0, 0x8d41

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES11Ext;->glBindRenderbufferOES(II)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_oFrameBuffersIDs:[I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_oFrameBuffersIDs:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11Ext;->glGenFramebuffersOES(I[II)V

    const v0, 0x8d40

    iget-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_oFrameBuffersIDs:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES11Ext;->glFramebufferTexture2DOES(IIIII)V

    const v0, 0x8d40

    const v1, 0x8d00

    const v2, 0x8d41

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_oDepthRenderBufferIDs:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES11Ext;->glFramebufferRenderbufferOES(IIII)V

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    invoke-static {}, Landroid/opengl/GLES11;->glGetError()I

    move-result v9

    if-eqz v9, :cond_1

    const-string v0, "SweepView::Snapshot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLES11 GLError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES11Ext;->glCheckFramebufferStatusOES(I)I

    move-result v11

    const v0, 0x8cd5

    if-eq v11, v0, :cond_0

    const-string v0, "SweepView::Snapshot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLES11Ext Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 4
        -0x40800000
        -0x40800000
        0x0
        0x3f800000
        -0x40800000
        0x0
        0x3f800000
        0x3f800000
        0x0
        -0x40800000
        0x3f800000
        0x0
    .end array-data
.end method

.method public Destroy(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_fbVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES11;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_oFrameBuffersIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES11;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_oDepthRenderBufferIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES11;->glDeleteBuffers(I[II)V

    :cond_0
    iput-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_fbVertices:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_bbIndices:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    iput-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_oFrameBuffersIDs:[I

    iput-object v1, p0, Lcom/voovio/gles/Snapshot11;->m_oDepthRenderBufferIDs:[I

    :cond_1
    return-void
.end method

.method public UnBindFramebuffer()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 10
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # F

    const/16 v9, 0xb71

    const/high16 v0, -0x40800000

    const/16 v8, 0xde1

    const/4 v7, 0x0

    const/high16 v1, 0x3f800000

    invoke-static {v9}, Landroid/opengl/GLES11;->glIsEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v9}, Landroid/opengl/GLES11;->glDisable(I)V

    :cond_0
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES11;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    invoke-static {v8}, Landroid/opengl/GLES11;->glEnable(I)V

    iget-object v2, p0, Lcom/voovio/gles/Snapshot11;->m_aTextureIDs:[I

    aget v2, v2, v7

    invoke-static {v8, v2}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v2, 0xba7

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_oP:[F

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES11;->glGetFloatv(I[FI)V

    const/16 v2, 0x1701

    invoke-static {v2}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    move v2, v0

    move v3, v1

    move v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES11;->glOrthof(FFFFFF)V

    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    const/4 v0, 0x3

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v7, v3}, Landroid/opengl/GLES11;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v7, v3}, Landroid/opengl/GLES11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-static {v1, v1, v1, p2}, Landroid/opengl/GLES11;->glColor4f(FFFF)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/voovio/gles/Snapshot11;->m_bbIndices:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES11;->glDrawElements(IIILjava/nio/Buffer;)V

    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_oP:[F

    invoke-static {v0, v7}, Landroid/opengl/GLES11;->glLoadMatrixf([FI)V

    invoke-static {v8, v7}, Landroid/opengl/GLES11;->glBindTexture(II)V

    invoke-static {v8}, Landroid/opengl/GLES11;->glDisable(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES11;->glDisable(I)V

    if-eqz v6, :cond_1

    invoke-static {v9}, Landroid/opengl/GLES11;->glEnable(I)V

    :cond_1
    return-void
.end method

.method public setTextureSize(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_szTexture:Lcom/voovio/geometry/Point;

    int-to-float v1, p1

    iput v1, v0, Lcom/voovio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/voovio/gles/Snapshot11;->m_szTexture:Lcom/voovio/geometry/Point;

    int-to-float v1, p2

    iput v1, v0, Lcom/voovio/geometry/Point;->y:F

    invoke-direct {p0}, Lcom/voovio/gles/Snapshot11;->UpdateTextureCoordinates()V

    return-void
.end method
