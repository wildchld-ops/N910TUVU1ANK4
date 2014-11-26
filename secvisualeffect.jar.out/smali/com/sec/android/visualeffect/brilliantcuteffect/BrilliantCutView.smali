.class public Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;
.super Landroid/opengl/GLSurfaceView;
.source "BrilliantCutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$1;,
        Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXConfigChooser;,
        Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;
    }
.end annotation


# static fields
.field public static final PORTRAIT_TYPE:I = 0x0

.field public static final TABLET_TYPE:I = 0x1


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->DBG:Z

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->TAG:Ljava/lang/String;

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "BrilliantCutView Constructor test 20140607"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mContext:Landroid/content/Context;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;III)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->setValueOfDVFS()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-direct {v7, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXContextFactory;-><init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V

    new-instance v6, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXConfigChooser;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$VFXConfigChooser;-><init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView$1;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, v7}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0, v8}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "BrilliantCutEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    const-string v1, "1574400"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "389000000"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->setValueOfDVFS(ZIZI)V

    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

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

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->cleanUp()V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

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

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "RENDERMODE_CONTINUOUSLY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->onConfigurationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->reset()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->screenTurnedOn()V

    return-void
.end method

.method public sendDragSoundFadeOutForTouchUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->sendDragSoundFadeOutForTouchUp()V

    return-void
.end method

.method public sendDragSoundFadeOutForUnlock()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->sendDragSoundFadeOutForUnlock()V

    return-void
.end method

.method public sendDragSoundInfo(Landroid/media/SoundPool;I)V
    .locals 1
    .param p1    # Landroid/media/SoundPool;
    .param p2    # I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->sendDragSoundInfo(Landroid/media/SoundPool;I)V

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public settingsForImageType(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->settingsForImageType(I)V

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->show()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    const-string v0, "BrilliantCutEffect_BrilliantRingView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public unlockEffect()V
    .locals 1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->mRenderer:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->unlockEffect()V

    return-void
.end method
