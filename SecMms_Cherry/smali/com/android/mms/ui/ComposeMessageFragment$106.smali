.class Lcom/android/mms/ui/ComposeMessageFragment$106;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x82

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0x13

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const/16 v2, 0x14

    if-eq p2, v2, :cond_6

    const/16 v2, 0x3d

    if-ne p2, v2, :cond_8

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_7

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mInsertedSimNum:I
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9400()I

    move-result v1

    if-le v1, v0, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton2:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton2:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton2:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton2:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x15

    if-ne p2, v2, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method
