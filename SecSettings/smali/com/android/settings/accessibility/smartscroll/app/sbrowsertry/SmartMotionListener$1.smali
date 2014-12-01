.class Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;
.super Ljava/lang/Object;
.source "SmartMotionListener.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOTION - SMART_SCROLL_TILT_UP_START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeedNormalY:I
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)I

    move-result v1

    # invokes: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->handleSmartMotionScrolling(II)V
    invoke-static {v0, v4, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;II)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOTION - SMART_SCROLL_TILT_DOWN_START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeedNormalY:I
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)I

    move-result v2

    # invokes: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->handleSmartMotionScrolling(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;II)V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOTION - SMART_SCROLL_TILT_FACE_IN_STOP : listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckStartMotionListener:Z
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckFaceDetected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$502(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;I)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # invokes: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->getSmartScrollSpeed()V
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$600(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$802(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$902(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckStartMotionListener:Z
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z
    invoke-static {v0, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$402(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOTION - SMART_SCROLL_TILT_FACE_IN_STOP - onSmartScrollReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->smartScrollReady()V

    goto/16 :goto_0

    :pswitch_3
    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOTION - SMART_SCROLL_TILT_FACE_OUT_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$502(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;I)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$802(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z

    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$402(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$902(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
