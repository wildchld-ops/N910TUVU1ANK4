.class public Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;
.super Lcom/sec/android/app/camera/subview/SubViewBase;
.source "SubViewTutorialSelectCameraMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubViewTutorialSelectCameraMode"

.field private static blinkAnimation:Landroid/view/animation/Animation;

.field private static mHelpFocus:Landroid/widget/ImageView;

.field private static mPlayAnimation:Z


# instance fields
.field protected mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mPlayAnimation:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->setOrientationListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->initLayout()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mPlayAnimation:Z

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    sput-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    return-void
.end method

.method public getFocusPosition()Landroid/graphics/Point;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x640

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    :goto_0
    const-string v1, "SubViewTutorialSelectCameraMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GD] getFocusPosition point:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/16 v1, 0x76c

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public initLayout()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mHelpLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    return-void
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mPlayAnimation:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public onShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->setFixedOrientation()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->getFixedOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->setLastOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    :cond_2
    return-void
.end method

.method public rotateLayout()V
    .locals 2

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->initLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->onMoveHelpFocusPicker()V

    :cond_0
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;-><init>(Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public setStepChangeMode()V
    .locals 3

    const-string v1, "SubViewTutorialSelectCameraMode"

    const-string v2, "setStepChangeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mEasyMode:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mPlayAnimation:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0f004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    goto :goto_0
.end method

.method public setStepComplete()V
    .locals 2

    const-string v0, "SubViewTutorialSelectCameraMode"

    const-string v1, "setStepComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStepSelectMode()V
    .locals 2

    const-string v0, "SubViewTutorialSelectCameraMode"

    const-string v1, "setStepSelectMode"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public setStepSwipeList()V
    .locals 3

    const-string v1, "SubViewTutorialSelectCameraMode"

    const-string v2, "setStepSwipeList"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mPlayAnimation:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mHelpFocus:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0f004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method
