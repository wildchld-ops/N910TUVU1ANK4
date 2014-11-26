.class public Lcom/sec/android/visualeffect/watercolor/WaterColorView;
.super Landroid/opengl/GLSurfaceView;
.source "WaterColorView.java"


# static fields
.field public static final PORTRAIT_MODE:I = 0x0

.field public static final QUALITY_LEVEL_0:I = 0x0

.field public static final QUALITY_LEVEL_1:I = 0x1

.field public static final QUALITY_LEVEL_2:I = 0x2

.field public static final QUALITY_LEVEL_3:I = 0x3

.field public static final TABLET_MODE:I = 0x1


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

.field private mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/16 v8, 0x8

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->DBG:Z

    const-string v0, "WaterColor_WaterColorView"

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->TAG:Ljava/lang/String;

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "WaterColorView Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-direct {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    new-instance v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    move-object v2, p0

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ILcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;III)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->setValueOfDVFS()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    const-string v1, "1574400"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "389000000"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->setValueOfDVFS(ZIZI)V

    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 2

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cleanUp()V

    return-void
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const-string v0, "WaterColor_WaterColorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHoverEvent event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const-string v0, "WaterColor_WaterColorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const-string v0, "WaterColor_WaterColorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEventForPatternLock event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onTouchEventForPatternLock(Landroid/view/MotionEvent;)V

    return v3
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onConfigurationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->destroyed()V

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
    .locals 2

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->reset()V

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "requestRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->screenTurnedOn()V

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # Landroid/graphics/Bitmap;
    .param p4    # Landroid/graphics/Bitmap;
    .param p5    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->show()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public unlockEffect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->unlockEffect()V

    return-void
.end method
