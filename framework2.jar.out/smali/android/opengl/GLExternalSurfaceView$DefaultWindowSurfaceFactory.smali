.class Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "GLExternalSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLExternalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultWindowSurfaceFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLExternalSurfaceView$1;)V
    .locals 0
    .param p1    # Landroid/opengl/GLExternalSurfaceView$1;

    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4    # Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3    # Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method
