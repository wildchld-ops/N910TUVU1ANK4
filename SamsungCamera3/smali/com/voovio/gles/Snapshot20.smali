.class public Lcom/voovio/gles/Snapshot20;
.super Ljava/lang/Object;
.source "Snapshot20.java"


# instance fields
.field private m_aTexCoords:[F

.field public m_aTextureIDs:[I

.field private m_bbIndices:Ljava/nio/ByteBuffer;

.field private m_fbTexCoords:Ljava/nio/FloatBuffer;

.field private m_fbVertices:Ljava/nio/FloatBuffer;

.field private m_iAlphaLoc:I

.field private m_iProgId:I

.field private m_iTexLoc:I

.field private m_iUVCoordsLoc:I

.field private m_iVertexLoc:I

.field private m_oDepthRenderBufferIDs:[I

.field private m_oFrameBuffersIDs:[I

.field private m_strFShader:Ljava/lang/String;

.field private m_strVShader:Ljava/lang/String;

.field public m_szFrame:Lcom/voovio/geometry/Point;

.field public m_szTexture:Lcom/voovio/geometry/Point;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attribute vec4 a_vertex;\nattribute vec2 a_uvcoords;\nuniform float u_alpha;\nvarying float v_alpha;\nvarying vec2 v_uvcoords;\nvoid main()\n{\ngl_Position = a_vertex;\nv_alpha = u_alpha;\nv_uvcoords = a_uvcoords;\n}\n"

    iput-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_strVShader:Ljava/lang/String;

    const-string v0, "precision mediump float;\nvarying vec2 v_uvcoords;\nvarying float v_alpha;\nuniform sampler2D u_texId;\nvoid main()\n{\ngl_FragColor = texture2D(u_texId, v_uvcoords);\ngl_FragColor.a = v_alpha;\n}\n"

    iput-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_strFShader:Ljava/lang/String;

    iput v1, p0, Lcom/voovio/gles/Snapshot20;->m_iProgId:I

    iput v1, p0, Lcom/voovio/gles/Snapshot20;->m_iVertexLoc:I

    iput v1, p0, Lcom/voovio/gles/Snapshot20;->m_iUVCoordsLoc:I

    iput v1, p0, Lcom/voovio/gles/Snapshot20;->m_iTexLoc:I

    iput v1, p0, Lcom/voovio/gles/Snapshot20;->m_iAlphaLoc:I

    new-instance v0, Lcom/voovio/geometry/Point;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_szTexture:Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_fbVertices:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_bbIndices:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    iput-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_oDepthRenderBufferIDs:[I

    iput-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_oFrameBuffersIDs:[I

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    return-void
.end method

.method private UpdateTextureCoordinates()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v4, 0x3f000000

    const/high16 v5, 0x3f800000

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_szTexture:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    div-float v0, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_szTexture:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    aput v0, v2, v6

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    const/4 v3, 0x2

    sub-float v4, v5, v0

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    const/4 v3, 0x4

    sub-float v4, v5, v0

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    const/4 v3, 0x5

    sub-float v4, v5, v1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    const/4 v3, 0x6

    aput v0, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    const/4 v3, 0x7

    sub-float v4, v5, v1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_aTexCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public BindFramebuffer()V
    .locals 6

    const v5, 0x8d40

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_oFrameBuffersIDs:[I

    aget v1, v1, v4

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    aget v3, v3, v4

    invoke-static {v5, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v1, 0x8d00

    const v2, 0x8d41

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_oDepthRenderBufferIDs:[I

    aget v3, v3, v4

    invoke-static {v5, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    const-string v1, "SweepView::Snapshot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GLES11Ext Status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Create()V
    .locals 14

    const v13, 0x8d41

    const/4 v4, 0x2

    const/16 v0, 0xde1

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc

    new-array v11, v2, [F

    fill-array-data v11, :array_0

    array-length v2, v11

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_fbVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-direct {p0}, Lcom/voovio/gles/Snapshot20;->UpdateTextureCoordinates()V

    const/4 v2, 0x6

    new-array v10, v2, [B

    aput-byte v12, v10, v12

    aput-byte v4, v10, v4

    const/4 v2, 0x4

    aput-byte v4, v10, v2

    const/4 v2, 0x5

    const/4 v3, 0x3

    aput-byte v3, v10, v2

    array-length v2, v10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_bbIndices:Ljava/nio/ByteBuffer;

    new-array v2, v12, [I

    iput-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    invoke-static {v12, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/high16 v3, 0x46180000

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    const/high16 v3, 0x46180000

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x47012f00

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    const v3, 0x47012f00

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x1907

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v4, v4, Lcom/voovio/geometry/Point;->y:F

    float-to-int v4, v4

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    new-array v0, v12, [I

    iput-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_oDepthRenderBufferIDs:[I

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_oDepthRenderBufferIDs:[I

    invoke-static {v12, v0, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_oDepthRenderBufferIDs:[I

    aget v0, v0, v1

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v0, 0x81a5

    iget-object v2, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    float-to-int v3, v3

    invoke-static {v13, v0, v2, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    new-array v0, v12, [I

    iput-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_oFrameBuffersIDs:[I

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_oFrameBuffersIDs:[I

    invoke-static {v12, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "SweepView::Snapshot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLES20 GLError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_strVShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_strFShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/voovio/gles/Snapshot20;->m_iProgId:I

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iProgId:I

    const-string v1, "a_vertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/voovio/gles/Snapshot20;->m_iVertexLoc:I

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iProgId:I

    const-string v1, "a_uvcoords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/voovio/gles/Snapshot20;->m_iUVCoordsLoc:I

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iProgId:I

    const-string v1, "u_texId"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/voovio/gles/Snapshot20;->m_iTexLoc:I

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iProgId:I

    const-string v1, "u_alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/voovio/gles/Snapshot20;->m_iAlphaLoc:I

    goto :goto_0

    nop

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

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_fbVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_oFrameBuffersIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_oDepthRenderBufferIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    :cond_0
    iput-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_fbVertices:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_bbIndices:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    iput-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_oFrameBuffersIDs:[I

    iput-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_oDepthRenderBufferIDs:[I

    :cond_1
    return-void
.end method

.method public UnBindFramebuffer()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public draw(F)V
    .locals 9
    .param p1    # F

    const/16 v2, 0x1406

    const/16 v8, 0xbe2

    const/16 v7, 0xb71

    const/4 v3, 0x0

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_0
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/voovio/gles/Snapshot20;->m_aTextureIDs:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iTexLoc:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iAlphaLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iVertexLoc:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/voovio/gles/Snapshot20;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iUVCoordsLoc:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/voovio/gles/Snapshot20;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/voovio/gles/Snapshot20;->m_iUVCoordsLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/voovio/gles/Snapshot20;->m_bbIndices:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    if-eqz v6, :cond_1

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_1
    return-void
.end method

.method public setTextureSize(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_szTexture:Lcom/voovio/geometry/Point;

    int-to-float v1, p1

    iput v1, v0, Lcom/voovio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/voovio/gles/Snapshot20;->m_szTexture:Lcom/voovio/geometry/Point;

    int-to-float v1, p2

    iput v1, v0, Lcom/voovio/geometry/Point;->y:F

    invoke-direct {p0}, Lcom/voovio/gles/Snapshot20;->UpdateTextureCoordinates()V

    return-void
.end method
