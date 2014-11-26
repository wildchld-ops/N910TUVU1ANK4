.class Landroid/opengl/GLExternalSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLExternalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLExternalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglCreateSurfaceFailCnt:I

.field private mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Landroid/opengl/GLExternalSurfaceView;


# direct methods
.method constructor <init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$Renderer;)V
    .locals 3
    .param p2    # Landroid/opengl/GLExternalSurfaceView$Renderer;

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    iput-boolean v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    iput v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    iput-object p2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    return-void
.end method

.method static synthetic access$1202(Landroid/opengl/GLExternalSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0    # Landroid/opengl/GLExternalSurfaceView$GLThread;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v13, Landroid/opengl/GLExternalSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-direct {v13, v14}, Landroid/opengl/GLExternalSurfaceView$EglHelper;-><init>(Landroid/opengl/GLExternalSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    :try_start_0
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v13, :cond_1

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    return-void

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/Runnable;

    move-object v5, v0

    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_12

    :try_start_4
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v13, v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mPaused is now "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v13, :cond_4

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "releasing EGL context because asked to tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v1, 0x1

    :cond_4
    if-eqz v8, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v8, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-eqz v13, :cond_8

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "releasing EGL surface because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static {v13}, Landroid/opengl/GLExternalSurfaceView;->access$900(Landroid/opengl/GLExternalSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_6

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "releasing EGL context because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->finish()V

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "terminating EGL because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v13, :cond_a

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "noticed surfaceView surface lost tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_9
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v13, :cond_b

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "noticed surfaceView surface acquired tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    if-eqz v4, :cond_c

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sending render notification tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->readyToDraw()Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v13, :cond_d

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_e

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v3, 0x1

    const/4 v9, 0x1

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v13}, Landroid/opengl/GLExternalSurfaceView;->access$1000(Landroid/opengl/GLExternalSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    const/4 v12, 0x1

    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "noticing that we want render notification tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    const/4 v15, 0x0

    # setter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v13, v15}, Landroid/opengl/GLExternalSurfaceView;->access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z

    :goto_4
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v13

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v13

    :cond_f
    :try_start_8
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v13

    if-eqz v13, :cond_d

    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v13, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    const/4 v2, 0x1

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    :catch_0
    move-exception v10

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    throw v10

    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_4

    :cond_11
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "waiting tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHaveEglContext: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHaveEglSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mPaused: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHasSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mWaitingForSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mWidth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHeight: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mRequestRender: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mRenderMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :cond_12
    if-eqz v3, :cond_14

    :try_start_b
    const-string v13, "GLThread"

    const-string v14, "egl createSurface"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v14}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v6, v0

    if-nez v6, :cond_13

    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t create a surface "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    goto/16 :goto_0

    :cond_13
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v3, 0x0

    :cond_14
    if-eqz v2, :cond_15

    const-string v13, "GLThread"

    const-string/jumbo v14, "onSurfaceCreated"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    iget-object v14, v14, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v13, v6, v14}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/4 v2, 0x0

    :cond_15
    if-eqz v9, :cond_16

    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onSurfaceChanged("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-interface {v13, v6, v11, v7}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    const/4 v9, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v13}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v13

    if-nez v13, :cond_18

    :cond_17
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onDrawFrame] mRequestPaused = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,surface.valid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v15}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-interface {v13, v6}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v13}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v13

    if-nez v13, :cond_1a

    :cond_19
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[egl.swap] mRequestPaused = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,surface.valid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v15}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->swap()Z

    move-result v13

    if-nez v13, :cond_1b

    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v8, 0x1

    :cond_1b
    if-eqz v12, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v13

    :try_start_c
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v13

    :catchall_3
    move-exception v13

    :try_start_d
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v13
.end method

.method private readyToDraw()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 6

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string/jumbo v3, "onPause waiting for mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onResume()V
    .locals 6

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string/jumbo v3, "onResume waiting for !mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onWindowResize(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    iput p2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    const/4 v3, 0x1

    # setter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v1, v3}, Landroid/opengl/GLExternalSurfaceView;->access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->ableToDraw()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Main thread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowResize waiting for render complete from tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v4}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldExit:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    return-void

    :catchall_0
    move-exception v0

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    throw v0

    :catch_0
    move-exception v0

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    goto :goto_0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1    # I

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 6

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceCreated tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 6

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceDestroyed tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
