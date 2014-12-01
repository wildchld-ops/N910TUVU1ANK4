.class Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;
.super Ljava/lang/Object;
.source "BrilliantRingView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFXContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field private mEGLClientVersion:I

.field private mRenderer:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;


# direct methods
.method public constructor <init>(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;->mEGLClientVersion:I

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;->mRenderer:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;->mEGLClientVersion:I

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;->mEGLClientVersion:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView$VFXContextFactory;->mRenderer:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->destroyed()V

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
