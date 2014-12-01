.class Lcom/android/mms/ui/ComposeMessageFragment$58;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$58;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear2:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method
