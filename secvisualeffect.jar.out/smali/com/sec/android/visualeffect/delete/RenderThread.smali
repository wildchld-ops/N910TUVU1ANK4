.class public Lcom/sec/android/visualeffect/delete/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "DeleteView RenderThread"


# instance fields
.field count:I

.field private isWait:Z

.field mBgColorB:F

.field mBgColorG:F

.field mBgColorR:F

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private volatile mFinished:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field mHeight:I

.field mIsGesture:Z

.field mLocalHeight:F

.field mLocalPosX:F

.field mLocalPosY:F

.field mLocalWidth:F

.field mMode:I

.field mModelHeight:F

.field mModelSet:Z

.field mModelWidth:F

.field mOrientation:I

.field mPauseTiming:F

.field mPosX:F

.field mPosY:F

.field mReset:Z

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field mSurfaceChanged:Z

.field private mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

.field mView:Landroid/view/TextureView;

.field mWidth:I


# direct methods
.method constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
    .param p2    # Landroid/os/Handler;

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    iput v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->count:I

    iput v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorR:F

    iput v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorG:F

    iput v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorB:F

    iput v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mMode:I

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelSet:Z

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    iput-object p0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    return-void
.end method

.method private checkCurrent()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkEglError()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const-string v1, "DeleteView RenderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [I

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->getConfig()[I

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    aget-object v0, v3, v6

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishGL()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method

.method private getConfig()[I
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3026
        0x0
        0x3032
        0x1
        0x3031
        0x4
        0x3038
    .end array-data
.end method

.method private initGL()V
    .locals 7

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglGetDisplay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglInitialize failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/visualeffect/delete/RenderThread;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    const-string v2, "DeleteView RenderThread"

    const-string v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindowSurface failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_0
.end method

.method private runCodes()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "DeleteView RenderThread"

    const-string v2, "thread wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->checkCurrent()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->onDrawFrame()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-eqz v0, :cond_3

    const-string v0, "DeleteView RenderThread"

    const-string v1, "thread finished but swap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot swap buffers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->checkEglError()V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-eqz v0, :cond_1

    const-string v0, "DeleteView RenderThread"

    const-string v1, "thread finished but rendering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3    # Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public destroy()V
    .locals 2

    const-string v0, "DeleteView RenderThread"

    const-string v1, "destory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteDestroy()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initModel(FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFFFFZII)V
    .locals 1
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # Landroid/graphics/Bitmap;
    .param p6    # Landroid/graphics/Bitmap;
    .param p7    # F
    .param p8    # F
    .param p9    # F
    .param p10    # F
    .param p11    # F
    .param p12    # Z
    .param p13    # I
    .param p14    # I

    iput p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosX:F

    iput p2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosY:F

    iput p3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelWidth:F

    iput p4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelHeight:F

    iput p7, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPauseTiming:F

    iput p8, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosX:F

    iput p9, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosY:F

    iput p10, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalWidth:F

    iput p11, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalHeight:F

    iput-boolean p12, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mIsGesture:Z

    iput p13, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mOrientation:I

    iput p14, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mMode:I

    invoke-static {p5, p6}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteSetPaperTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    return-void
.end method

.method public initView(FFFLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Landroid/graphics/Bitmap;

    iput p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorR:F

    iput p2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorG:F

    iput p3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorB:F

    invoke-static {p4}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteSetShadowTexture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onDrawFrame()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    if-ne v0, v12, :cond_1

    iget v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mHeight:I

    iget v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorR:F

    iget v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorG:F

    iget v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorB:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteInitView(IIFFF)V

    iput-boolean v13, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    if-ne v0, v12, :cond_2

    iget v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosX:F

    iget v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosY:F

    iget v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelWidth:F

    iget v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelHeight:F

    iget v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPauseTiming:F

    iget v5, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosX:F

    iget v6, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosY:F

    iget v7, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalWidth:F

    iget v8, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalHeight:F

    iget-boolean v9, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mIsGesture:Z

    iget v10, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mOrientation:I

    iget v11, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mMode:I

    invoke-static/range {v0 .. v11}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteInitModel(FFFFFFFFFZII)V

    iput-boolean v12, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelSet:Z

    iput-boolean v13, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    :cond_2
    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteStep()V

    goto :goto_0
.end method

.method public onSurfaceChanged(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iput p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mWidth:I

    iput p2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteInitialize()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelSet:Z

    return-void
.end method

.method public declared-synchronized pauseNResume(Z)V
    .locals 3
    .param p1    # Z

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    const-string v0, "DeleteView RenderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread isWait = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    const-string v0, "DeleteView RenderThread"

    const-string v1, "thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->initGL()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->onSurfaceCreated()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/visualeffect/delete/RenderThread;->onSurfaceChanged(II)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->runCodes()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->finishGL()V

    const-string v0, "DeleteView RenderThread"

    const-string v1, "thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    iput-object p0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;

    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    return-void
.end method

.method public startAnimation(FFFFFFFF)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    invoke-static/range {p1 .. p8}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteStartAnimation(FFFFFFFF)V

    return-void
.end method
