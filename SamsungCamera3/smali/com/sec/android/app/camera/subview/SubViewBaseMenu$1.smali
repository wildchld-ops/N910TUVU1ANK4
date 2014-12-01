.class Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;
.super Ljava/lang/Object;
.source "SubViewBaseMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/subview/SubViewBaseMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v9, 0x1b

    const/high16 v8, 0x42c80000

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->onUserInteraction()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f004c

    if-ne v5, v6, :cond_6

    const-string v5, "SubViewBaseMenu"

    const-string v6, "onTouch : shutter button"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    const-string v4, "SubViewBaseMenu"

    const-string v5, "onTouch : ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mInitTouchPoint:Landroid/graphics/PointF;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$000(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/Camera;->setLongPressEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v9, v7}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    goto :goto_0

    :pswitch_1
    const-string v5, "SubViewBaseMenu"

    const-string v6, "onTouch : ACTION_CANCEL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    const-string v5, "SubViewBaseMenu"

    const-string v6, "onTouch : ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/camera/Camera;->setLongPressEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowSettingMenu()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowShootingModeMenu()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowThumbnailListMenu()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v9, v7}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mInitTouchPoint:Landroid/graphics/PointF;
    invoke-static {v6}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$000(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mInitTouchPoint:Landroid/graphics/PointF;
    invoke-static {v6}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$000(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f004b

    if-ne v5, v6, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->onUserInteraction()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isFullScreenMenuShown()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->cancelTouchAE()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x82

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowThumbnailListMenu()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x82

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    move v3, v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f004a

    if-ne v5, v6, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowSettingMenu()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowShootingModeMenu()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowThumbnailListMenu()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideEffectMenu()V

    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_e
    move v3, v4

    goto/16 :goto_0

    :cond_f
    move v3, v4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
