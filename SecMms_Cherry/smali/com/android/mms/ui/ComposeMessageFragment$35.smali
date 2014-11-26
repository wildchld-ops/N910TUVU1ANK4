.class Lcom/android/mms/ui/ComposeMessageFragment$35;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/16 v6, 0x82

    const/4 v9, -0x1

    const/16 v8, 0x21

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isLongPressed:Z
    invoke-static {v5, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    sparse-switch p2, :sswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isLongPressed:Z
    invoke-static {v5, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    return v3

    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->getErrorFlag()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setErrorFlagInRecipientEditor(Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    move v3, v4

    goto :goto_1

    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_1

    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v3, "Mms/ComposeMessageFragment"

    const-string v5, "RecipientEditor DPAD_UP isPopupShowing=true "

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    move v3, v4

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v5, v3, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$35$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$35$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$35;)V

    const-wide/16 v6, 0x3c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move v3, v4

    goto/16 :goto_1

    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessageBanner()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBoxBanner:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBoxBanner:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v3, "Mms/ComposeMessageFragment"

    const-string v5, "RecipientEditor DPAD_DOWN isPopupShowing=true "

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v6}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    move v3, v4

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->findAvailableViewToFocus(Landroid/view/KeyEvent;)Z
    invoke-static {v4, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4900(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v6}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-eq v5, v3, :cond_3

    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v9, :cond_1

    goto/16 :goto_1

    :sswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v3, :cond_10

    move v0, v3

    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v6

    if-ne v5, v6, :cond_b

    if-nez v0, :cond_c

    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v5

    if-nez v5, :cond_11

    if-nez v0, :cond_11

    :cond_c
    move v1, v3

    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePlusButtonOnRecipient()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientsFieldVisible()I

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->requestFocus()Z

    :cond_f
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/16 v5, 0x42

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    goto/16 :goto_1

    :cond_10
    move v0, v4

    goto/16 :goto_2

    :cond_11
    move v1, v4

    goto :goto_3

    :sswitch_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getListSelection()I

    move-result v5

    if-ne v9, v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v5}, Lcom/android/mms/ui/SipHandler;->HasKeyboard()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    goto/16 :goto_0

    :cond_12
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v5

    if-nez v5, :cond_13

    move v2, v3

    :goto_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v5, v3, v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    goto/16 :goto_1

    :cond_13
    move v2, v4

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x3d -> :sswitch_3
        0x42 -> :sswitch_6
        0x43 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
