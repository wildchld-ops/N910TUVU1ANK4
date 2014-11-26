.class public Lcom/sec/android/visualeffect/rippleink/RippleInkView;
.super Landroid/opengl/GLSurfaceView;
.source "RippleInkView.java"


# static fields
.field public static final PORTRAIT_MODE:I = 0x0

.field public static final TABLET_MODE:I = 0x1


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->DBG:Z

    const-string v0, "RippleInkView"

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->TAG:Ljava/lang/String;

    const-string v0, "RippleInkView"

    const-string v1, "RippleInkView Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;III)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->setValueOfDVFS()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v5, 0x10

    move-object v0, p0

    move v1, v7

    move v2, v7

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RippleInkView"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setValueOfDVFS()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    const-string v1, "1574400"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "389000000"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setValueOfDVFS(ZIZI)V

    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I

    const-string v0, "RippleInkView"

    const-string v1, "view changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->changeBackground(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cleanUp()V

    return-void
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->onConfigurationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    const-string v0, "RippleInkView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->destroyed()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1    # I

    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reset()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->screenTurnedOn()V

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->changeBackground(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRippleConfiguration(IIFFFFIIIIFFFFI)V
    .locals 17
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # I
    .param p8    # I
    .param p9    # I
    .param p10    # I
    .param p11    # F
    .param p12    # F
    .param p13    # F
    .param p14    # F
    .param p15    # I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRippleConfiguration(IIFFFFIIIIFFFFI)V

    return-void
.end method

.method public setValueOfInk(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setValueOfInk(Z)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->show()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const-string v0, "RippleInkView"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    const-string v0, "RippleInkView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method
