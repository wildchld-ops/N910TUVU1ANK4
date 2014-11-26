.class Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;
.super Ljava/lang/Object;
.source "BrilliantCutView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFXContextFactory"
.end annotation


# instance fields
.field private final EGL_CONTEXT_CLIENT_VERSION:I

.field private final mEGLClientVersion:I

.field private final mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;


# direct methods
.method public constructor <init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V
    .locals 1
    .param p1    # Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;->mEGLClientVersion:I

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
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

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3    # Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->destroyed()V

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
