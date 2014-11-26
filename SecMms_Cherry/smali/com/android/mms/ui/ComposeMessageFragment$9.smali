.class Lcom/android/mms/ui/ComposeMessageFragment$9;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    const/16 v11, 0x52

    if-ne p2, v11, :cond_1

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v12}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEnterKeyInput()Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x42

    if-ne p2, v11, :cond_2

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "Enter Key is Disable Function in Messaging"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/16 v11, 0x15

    if-ne p2, v11, :cond_10

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v12

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v11, v4, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v4}, Landroid/widget/EditText;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_3

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v12

    if-ne v11, v12, :cond_8

    invoke-virtual {v4}, Landroid/widget/EditText;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_8

    if-nez v6, :cond_8

    :cond_4
    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v4}, Landroid/widget/EditText;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_5

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v12

    if-ne v11, v12, :cond_9

    invoke-virtual {v4}, Landroid/widget/EditText;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_9

    if-nez v6, :cond_9

    :cond_6
    const/4 v10, 0x1

    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_b

    if-eqz v6, :cond_b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_b

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v9, :cond_e

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Button;->requestFocus()Z

    :cond_c
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x11

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V

    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v10, :cond_10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEmojiForChn()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeTemplateButtonReplaceEmoji:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeTemplateButtonReplaceEmoji:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Button;->getVisibility()I

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeTemplateButtonReplaceEmoji:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Button;->requestFocus()Z

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x11

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "key event not from EditText"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/16 v11, 0x16

    if-eq p2, v11, :cond_11

    const/16 v11, 0x3d

    if-ne p2, v11, :cond_1a

    :cond_11
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    if-eqz v11, :cond_1a

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v12

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v11, v4, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v12

    if-ne v11, v12, :cond_13

    invoke-virtual {v4}, Landroid/widget/EditText;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_13

    if-nez v6, :cond_14

    :cond_13
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual {v4}, Landroid/widget/EditText;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_18

    if-nez v6, :cond_18

    :cond_14
    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_1c

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->requestFocus()Z

    :cond_15
    :goto_6
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x21

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V

    :cond_16
    :goto_7
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    if-nez v11, :cond_1d

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v12

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v11, v4, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1d

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v6, 0x0

    goto :goto_4

    :cond_18
    const/4 v9, 0x0

    goto :goto_5

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v11

    if-nez v11, :cond_1b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Button;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v5

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "key event not from EditText"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/16 v11, 0x14

    if-ne p2, v11, :cond_20

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1b
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1c
    :try_start_2
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v12

    if-ne v11, v12, :cond_16

    invoke-virtual {v4}, Landroid/widget/EditText;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_16

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_7

    :cond_1d
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v12

    if-ne v11, v12, :cond_1a

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v12

    if-ne v11, v12, :cond_1a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v12

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v11, v4, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1e
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-eqz v11, :cond_20

    move-object v4, p1

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_21

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_21

    const/4 v11, -0x1

    if-eq v3, v11, :cond_20

    if-eqz v8, :cond_20

    :try_start_3
    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->getLineCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_20

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_1f

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_1f

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x21

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1f
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v5

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "key event not from EditText"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_8
    const/16 v11, 0x13

    if-ne p2, v11, :cond_27

    const/16 v2, 0x102

    const/4 v1, 0x6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v11

    const/16 v12, 0x102

    if-ne v11, v12, :cond_24

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_24

    const/4 v7, 0x1

    :goto_9
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v11, :cond_28

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-nez v11, :cond_28

    if-eqz v7, :cond_25

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_21
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_20

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Button;->getVisibility()I

    move-result v11

    if-nez v11, :cond_20

    const/4 v11, -0x1

    if-eq v3, v11, :cond_20

    if-eqz v8, :cond_20

    :try_start_4
    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/EditText;->getLineCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_20

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_22

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_22
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_23

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_23

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x21

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_23
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v5

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "key event not from EditText"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_24
    const/4 v7, 0x0

    goto :goto_9

    :cond_25
    :try_start_5
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_27

    if-eqz v8, :cond_27

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_27

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_26

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_26

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x21

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_26
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_4
    move-exception v5

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "key event not from EditText"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_a
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_28
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-eqz v11, :cond_2a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientsFieldVisible()I

    move-result v11

    if-nez v11, :cond_2a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_2a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2a

    :try_start_6
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_27

    if-eqz v8, :cond_27

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_27

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_29

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_29

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x21

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_29
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_5
    move-exception v5

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "key event not from EditText"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_2a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessageBanner()Z

    move-result v11

    if-eqz v11, :cond_2c

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBoxBanner:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_27

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBoxBanner:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_27

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v11

    if-eqz v11, :cond_2b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    :cond_2b
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2c
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v11, :cond_30

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v11

    if-nez v11, :cond_30

    :try_start_7
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    if-eqz v11, :cond_2d

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2d
    const/4 v11, -0x1

    if-eq v3, v11, :cond_27

    if-eqz v8, :cond_27

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_27

    if-eqz v7, :cond_2e

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2e
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v11, :cond_2f

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_2f

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x21

    invoke-static {v12}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_2f
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_6
    move-exception v5

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "key event not from EditText"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_30
    const/4 v11, 0x0

    goto/16 :goto_0
.end method
