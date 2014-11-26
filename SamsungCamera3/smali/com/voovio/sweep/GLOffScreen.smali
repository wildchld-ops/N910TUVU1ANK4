.class public Lcom/voovio/sweep/GLOffScreen;
.super Ljava/lang/Object;
.source "GLOffScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/GLOffScreen$Renderer;
    }
.end annotation


# static fields
.field static final CONFIG_ARGB_8888:I = 0x1

.field static final CONFIG_RGB_565:I = 0x0

.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final LIST_CONFIGS:Z = false

.field static final TAG:Ljava/lang/String; = "GLOffScreen"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mByteBuffer:Ljava/nio/ByteBuffer;

.field mConfig:I

.field mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mHeight:I

.field mRenderer:Lcom/voovio/sweep/GLOffScreen$Renderer;

.field mThreadOwner:Ljava/lang/String;

.field mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/voovio/sweep/GLOffScreen;->mConfig:I

    iput p1, p0, Lcom/voovio/sweep/GLOffScreen;->mWidth:I

    iput p2, p0, Lcom/voovio/sweep/GLOffScreen;->mHeight:I

    iput p3, p0, Lcom/voovio/sweep/GLOffScreen;->mConfig:I

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mByteBuffer:Ljava/nio/ByteBuffer;

    new-array v2, v6, [I

    const/4 v3, 0x5

    new-array v0, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    aput v4, v0, v3

    iget v3, p0, Lcom/voovio/sweep/GLOffScreen;->mWidth:I

    aput v3, v0, v5

    const/16 v3, 0x3056

    aput v3, v0, v6

    iget v3, p0, Lcom/voovio/sweep/GLOffScreen;->mHeight:I

    aput v3, v0, v7

    const/4 v3, 0x4

    const/16 v4, 0x3038

    aput v4, v0, v3

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    invoke-direct {p0}, Lcom/voovio/sweep/GLOffScreen;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mThreadOwner:Ljava/lang/String;

    goto :goto_0

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    const/4 v1, 0x2

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/voovio/sweep/GLOffScreen;->mConfig:I

    if-nez v0, :cond_0

    const/16 v0, 0xf

    new-array v2, v0, [I

    const/16 v0, 0x3033

    aput v0, v2, v4

    aput v6, v2, v6

    const/16 v0, 0x3025

    aput v0, v2, v1

    const/4 v0, 0x3

    aput v3, v2, v0

    const/4 v0, 0x4

    const/16 v1, 0x3026

    aput v1, v2, v0

    const/16 v0, 0x3024

    aput v0, v2, v7

    const/4 v0, 0x7

    const/4 v1, 0x5

    aput v1, v2, v0

    const/16 v0, 0x3023

    aput v0, v2, v3

    const/16 v0, 0x9

    aput v7, v2, v0

    const/16 v0, 0xa

    const/16 v1, 0x3022

    aput v1, v2, v0

    const/16 v0, 0xb

    const/4 v1, 0x5

    aput v1, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x3021

    aput v1, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x3038

    aput v1, v2, v0

    :goto_0
    new-array v5, v6, [I

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v10, v5, v4

    if-lez v10, :cond_1

    new-array v0, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v6, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v4

    :goto_1
    return-object v0

    :cond_0
    const/16 v0, 0xf

    new-array v2, v0, [I

    const/16 v0, 0x3033

    aput v0, v2, v4

    aput v6, v2, v6

    const/16 v0, 0x3025

    aput v0, v2, v1

    const/4 v0, 0x3

    aput v3, v2, v0

    const/4 v0, 0x4

    const/16 v1, 0x3026

    aput v1, v2, v0

    const/16 v0, 0x3024

    aput v0, v2, v7

    const/4 v0, 0x7

    aput v3, v2, v0

    const/16 v0, 0x3023

    aput v0, v2, v3

    const/16 v0, 0x9

    aput v3, v2, v0

    const/16 v0, 0xa

    const/16 v1, 0x3022

    aput v1, v2, v0

    const/16 v0, 0xb

    aput v3, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x3021

    aput v1, v2, v0

    const/16 v0, 0xd

    aput v3, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x3038

    aput v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 4
    .param p1    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p2    # I

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method private listConfig()V
    .locals 13

    const-string v7, "GLOffScreen"

    const-string v8, "Config List {"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v9, :cond_0

    const-string v7, "GLOffScreen"

    const-string v8, "}"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    aget-object v2, v8, v7

    const/16 v10, 0x3025

    invoke-direct {p0, v2, v10}, Lcom/voovio/sweep/GLOffScreen;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v10, 0x3026

    invoke-direct {p0, v2, v10}, Lcom/voovio/sweep/GLOffScreen;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    const/16 v10, 0x3024

    invoke-direct {p0, v2, v10}, Lcom/voovio/sweep/GLOffScreen;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v10, 0x3023

    invoke-direct {p0, v2, v10}, Lcom/voovio/sweep/GLOffScreen;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v10, 0x3022

    invoke-direct {p0, v2, v10}, Lcom/voovio/sweep/GLOffScreen;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v1

    const/16 v10, 0x3021

    invoke-direct {p0, v2, v10}, Lcom/voovio/sweep/GLOffScreen;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v0

    const-string v10, "GLOffScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "    <d,s,r,g,b,a> = <"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v5, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/voovio/sweep/GLOffScreen;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v5, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    :cond_3
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget v2, p0, Lcom/voovio/sweep/GLOffScreen;->mWidth:I

    iget v3, p0, Lcom/voovio/sweep/GLOffScreen;->mHeight:I

    iget v1, p0, Lcom/voovio/sweep/GLOffScreen;->mConfig:I

    if-nez v1, :cond_2

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public getByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mRenderer:Lcom/voovio/sweep/GLOffScreen$Renderer;

    if-nez v1, :cond_0

    const-string v0, "GLOffScreen"

    const-string v1, "getByteBuffer: Renderer was not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "GLOffScreen"

    const-string v1, "getByteBuffer: This thread does not own the OpenGL context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v7

    check-cast v7, Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mRenderer:Lcom/voovio/sweep/GLOffScreen$Renderer;

    invoke-interface {v1, v7}, Lcom/voovio/sweep/GLOffScreen$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/voovio/sweep/GLOffScreen;->mWidth:I

    iget v3, p0, Lcom/voovio/sweep/GLOffScreen;->mHeight:I

    iget v1, p0, Lcom/voovio/sweep/GLOffScreen;->mConfig:I

    if-nez v1, :cond_2

    const/16 v4, 0x1907

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/GLOffScreen;->mConfig:I

    if-nez v1, :cond_3

    const v5, 0x8363

    :goto_2
    move v1, v0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x1908

    goto :goto_1

    :cond_3
    const/16 v5, 0x1401

    goto :goto_2
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/sweep/GLOffScreen;->mConfig:I

    if-nez v2, :cond_1

    const/4 v0, 0x2

    :goto_0
    iget v2, p0, Lcom/voovio/sweep/GLOffScreen;->mWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/voovio/sweep/GLOffScreen;->mHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mByteBuffer:Ljava/nio/ByteBuffer;

    :goto_1
    return-object v2

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 5
    .param p1    # Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLOffScreen"

    const-string v1, "post: This thread does not own the OpenGL context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setRenderer(Lcom/voovio/sweep/GLOffScreen$Renderer;)V
    .locals 6
    .param p1    # Lcom/voovio/sweep/GLOffScreen$Renderer;

    iput-object p1, p0, Lcom/voovio/sweep/GLOffScreen;->mRenderer:Lcom/voovio/sweep/GLOffScreen$Renderer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLOffScreen"

    const-string v2, "setRenderer: This thread does not own the OpenGL context."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/voovio/sweep/GLOffScreen;->mRenderer:Lcom/voovio/sweep/GLOffScreen$Renderer;

    iget-object v2, p0, Lcom/voovio/sweep/GLOffScreen;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v0, v2}, Lcom/voovio/sweep/GLOffScreen$Renderer;->onInit(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0
.end method
