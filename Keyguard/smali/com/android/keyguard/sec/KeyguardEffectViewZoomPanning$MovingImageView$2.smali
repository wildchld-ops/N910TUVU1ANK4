.class Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;
.super Landroid/os/Handler;
.source "KeyguardEffectViewZoomPanning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->isUpdatableState()Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "handleMessage() : Execution of updates that have been delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->update()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$1;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewZoomPanning$CameraState:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$800(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1800(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    const-wide/16 v1, 0x19

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$900(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)F

    move-result v1

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimation(F)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    const/high16 v1, 0x3f800000

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimation(F)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)F

    move-result v1

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimation(F)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1402(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$802(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;)Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1600(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->overlapAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1700(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
