.class Lcom/android/mms/ui/ComposeMessageFragment$8;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/16 v5, 0x52

    if-ne p2, v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    :cond_2
    const/16 v5, 0x43

    if-ne p2, v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    const/16 v1, 0x102

    const/4 v0, 0x6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    const/16 v6, 0x102

    if-ne v5, v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    move v2, v4

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessageBanner()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBoxBanner:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBoxBanner:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v4, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    move v3, v4

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    move v3, v4

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v8, :cond_7

    move v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v3, v4

    goto/16 :goto_0

    :pswitch_3
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/16 v5, 0x82

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->playSoundEffect(I)V

    move v3, v4

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/16 v5, 0x21

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->playSoundEffect(I)V

    move v3, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
