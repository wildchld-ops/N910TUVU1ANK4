.class Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;
.super Ljava/lang/Object;
.source "CallCardQcifVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    # getter for: Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;
    invoke-static {v5}, Lcom/android/incallui/CallCardQcifVideoFragment;->access$000(Lcom/android/incallui/CallCardQcifVideoFragment;)Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    # getter for: Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;
    invoke-static {v5}, Lcom/android/incallui/CallCardQcifVideoFragment;->access$000(Lcom/android/incallui/CallCardQcifVideoFragment;)Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current State: QCIF case hasIncomingCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hasActiveCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    # getter for: Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/incallui/CallCardQcifVideoFragment;->access$100(Lcom/android/incallui/CallCardQcifVideoFragment;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    # getter for: Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/incallui/CallCardQcifVideoFragment;->access$100(Lcom/android/incallui/CallCardQcifVideoFragment;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    const-string v6, "FarEnd no_video imageview visible : QCIF case"

    invoke-virtual {v5, v6, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    iget-object v3, v3, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    # getter for: Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/incallui/CallCardQcifVideoFragment;->access$100(Lcom/android/incallui/CallCardQcifVideoFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0
.end method
