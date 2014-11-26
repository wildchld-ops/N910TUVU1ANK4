.class Lcom/android/mms/ui/ComposeMessageFragment$3;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1    # Landroid/os/Message;

    iget v7, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mFontSizeIndex:I
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v9

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->isEditingMode(I)Z
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;I)Z

    move-result v1

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    if-eqz v8, :cond_4

    const/16 v8, 0xa

    if-ne v5, v8, :cond_1

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    :cond_1
    const/16 v8, 0xb

    if-ne v5, v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    :cond_2
    const/16 v8, 0xc

    if-ne v5, v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    :cond_3
    const/16 v8, 0xd

    if-ne v5, v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeText()Z

    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-nez v8, :cond_5

    const/16 v6, 0x20

    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v9, v6}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0xa

    if-eq v5, v8, :cond_6

    const/16 v8, 0xb

    if-ne v5, v8, :cond_7

    :cond_6
    const/16 v6, 0x1f

    goto :goto_1

    :cond_7
    const/16 v8, 0xc

    if-ne v5, v8, :cond_8

    const/16 v6, 0x21

    goto :goto_1

    :cond_8
    const/16 v6, 0x1e

    goto :goto_1

    :sswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v3}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v10, 0x22

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v3}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v10, 0x23

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_a
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v8}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-static {v8, v9, v3, v5, v1}, Lcom/android/mms/ui/MessageUtils;->viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    :cond_c
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v8}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_2

    :sswitch_6
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_7
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_8
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/16 v9, 0x21

    invoke-static {v9}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
        0x3c -> :sswitch_a
    .end sparse-switch
.end method
