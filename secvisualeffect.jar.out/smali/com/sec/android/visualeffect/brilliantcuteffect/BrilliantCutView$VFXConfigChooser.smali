.class Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXConfigChooser;
.super Ljava/lang/Object;
.source "BrilliantCutView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFXConfigChooser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$1;)V
    .locals 0
    .param p1    # Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$1;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXConfigChooser;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/16 v0, 0x11

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    new-array v5, v4, [I

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, v5, v6

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglChooseConfig() failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v0, v3, v6

    return-object v0

    :array_0
    .array-data 4
        0x3020
        0x20
        0x3021
        0x8
        0x3022
        0x8
        0x3023
        0x8
        0x3024
        0x8
        0x3032
        0x1
        0x3031
        0x4
        0x3033
        0x4
        0x3038
    .end array-data
.end method
