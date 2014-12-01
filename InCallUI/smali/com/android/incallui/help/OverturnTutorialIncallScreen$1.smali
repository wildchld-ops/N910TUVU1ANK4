.class Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;
.super Landroid/os/Handler;
.source "OverturnTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/OverturnTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$000(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "OVERTURN_TUTORIAL_SUCCESS message delivered"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    const/16 v1, 0xa

    # setter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$002(Lcom/android/incallui/help/OverturnTutorialIncallScreen;I)I

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$100(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$100(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$102(Lcom/android/incallui/help/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$200(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$300(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$300(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mEndTutorialAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$400(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$500(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAnimationIndex:I
    invoke-static {v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$600(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)I

    move-result v1

    # invokes: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$700(Lcom/android/incallui/help/OverturnTutorialIncallScreen;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    invoke-virtual {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch
.end method
