.class Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;
.super Ljava/lang/Object;
.source "SubViewRecordingMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/16 v8, 0x1b

    const/high16 v7, 0x42c80000

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v4, :cond_1

    const-string v3, "SubViewRecordingMenu"

    const-string v4, "mActivityContext is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f0046

    if-ne v4, v5, :cond_8

    const-string v4, "SubViewRecordingMenu"

    const-string v5, "onTouch : shutter button"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mInitTouchPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$000(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setShutterButtonPressed(Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v8, v6}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowSettingMenu()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowShootingModeMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setShutterButtonPressed(Z)Z

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowThumbnailListMenu()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowZoomMenu()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->isPressedShutterButton()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setShutterButtonPressed(Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v8, v6}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v4, 0xca

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepRecordingStop()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->isPressedShutterButton()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mInitTouchPoint:Landroid/graphics/PointF;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$000(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v0, v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mInitTouchPoint:Landroid/graphics/PointF;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$000(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v1, v4, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setShutterButtonPressed(Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f0045

    if-ne v4, v5, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    :goto_2
    move v2, v3

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_9

    move v2, v3

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowSettingMenu()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowShootingModeMenu()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v2, v3

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowThumbnailListMenu()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowZoomMenu()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x82

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x82

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_2

    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f0044

    if-ne v4, v5, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_f
    :goto_3
    move v2, v3

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3

    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_10

    move v2, v3

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowZoomMenu()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_11
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getRecordingState()I

    move-result v4

    if-ne v4, v3, :cond_12

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getCamcorderRecordingPauseButton(Z)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getRecordingState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f020247

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getCamcorderRecordingPauseButton(Z)Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getRecordingState()I

    move-result v2

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f02024c

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f003d

    if-ne v4, v5, :cond_17

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_14
    :goto_4
    move v2, v3

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_4

    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_15

    move v2, v3

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowZoomMenu()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getCamcorderRecordingCAFButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_4

    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f003e

    if-ne v4, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_18
    :goto_5
    move v2, v3

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_5

    :pswitch_d
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_19

    move v2, v3

    goto/16 :goto_0

    :cond_19
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowZoomMenu()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_1a
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingDualMode:Z
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$500(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020249

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # setter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingDualMode:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$502(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;Z)Z

    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getCamcorderRecordingDualButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_5

    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f02024a

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # setter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingDualMode:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$502(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;Z)Z

    goto :goto_6

    :pswitch_e
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
