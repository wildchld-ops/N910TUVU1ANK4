.class Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;
.super Ljava/lang/Object;
.source "VoiceAndVideoCallTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callActiveScreenSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x68

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$000(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$200(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "videocall"

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$300(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video_call_disable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$400(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$400(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$400(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$500(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$000(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$000(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
