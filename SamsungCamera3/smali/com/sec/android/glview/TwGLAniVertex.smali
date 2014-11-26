.class public abstract Lcom/sec/android/glview/TwGLAniVertex;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAniVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;
    }
.end annotation


# static fields
.field public static final DISP_PIC:I = 0x2

.field public static final DISP_PLAY:I = 0x1

.field public static final DISP_STOP:I


# instance fields
.field protected final DISP_BREAK:F

.field protected final DISP_CNT:F

.field protected final DISP_CONTINUE:F

.field protected GRID_SIZE:I

.field protected final INIT_CNT:F

.field protected mCnt:F

.field protected mMode:I

.field protected mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

.field protected mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

.field protected mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

.field protected mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

.field protected mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

.field protected mProgramID:I

.field private mTempLayoutUpdated:Z

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertices:[F

.field protected mViewMatrix:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 4
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLAniVertex;->mProgramID:I

    iput-object v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mViewMatrix:[F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLAniVertex;->mTempLayoutUpdated:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_CNT:F

    iput v3, p0, Lcom/sec/android/glview/TwGLAniVertex;->INIT_CNT:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_BREAK:F

    const/high16 v0, -0x40000000

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_CONTINUE:F

    iput v3, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    iput v2, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    iput-object v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getDrawRatio()F
.end method

.method public declared-synchronized getLoaded()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized initVertices()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->setVertices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw()V
    .locals 7

    const/4 v2, 0x1

    const/high16 v1, -0x40800000

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mTempLayoutUpdated:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->setVertices()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mTempLayoutUpdated:Z

    :cond_2
    const/4 v6, 0x0

    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getDrawRatio()F

    move-result v6

    :cond_3
    cmpl-float v0, v6, v1

    if-eqz v0, :cond_4

    const/high16 v0, -0x40000000

    cmpl-float v0, v6, v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->stopAniCustomAnimation()V

    cmpl-float v0, v6, v1

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0, v6}, Lcom/sec/android/glview/TwGLAniVertex;->setCustomAnimation(F)V

    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mViewMatrix:[F

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

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLAniVertex;->mViewMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLayoutUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mTempLayoutUpdated:Z

    return-void
.end method

.method protected declared-synchronized onLoad()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initSize()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->initVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgram;->getProgramID()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mProgramID:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract setCustomAnimation(F)V
.end method

.method public setOnAniProgressListener(Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    return-void
.end method

.method public setPicureMode(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    goto :goto_0
.end method

.method protected declared-synchronized setVertices()V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v12

    sub-float v5, v11, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v12

    sub-float v0, v11, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    iget v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v8, v11, :cond_1

    const/4 v6, 0x0

    move v4, v3

    :goto_1
    iget v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v6, v11, :cond_0

    int-to-float v11, v6

    iget v12, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v5

    add-float v7, v1, v11

    int-to-float v11, v8

    iget v12, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v0

    add-float v9, v2, v11

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v11, v4, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v11, v4, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public startAniCustomAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    return-void
.end method

.method public stopAniCustomAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;->onAniProgress(Lcom/sec/android/glview/TwGLView;I)V

    :cond_0
    return-void
.end method
