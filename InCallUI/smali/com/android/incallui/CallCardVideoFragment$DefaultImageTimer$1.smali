.class Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;
.super Ljava/lang/Object;
.source "CallCardVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    iget-object v1, v1, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$700(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    iget-object v1, v1, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$700(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    iget-object v1, v1, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current State: VGA & QVGA case hasActiveCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    iget-object v1, v1, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$800(Lcom/android/incallui/CallCardVideoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    iget-object v1, v1, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$800(Lcom/android/incallui/CallCardVideoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    iget-object v1, v1, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v2, "FarEnd no_video imageview visible : VGA & QVGA case"

    invoke-virtual {v1, v2, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    iget-object v1, v1, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$800(Lcom/android/incallui/CallCardVideoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
