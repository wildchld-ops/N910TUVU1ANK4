.class Lcom/android/mms/ui/EmoticonContainer$14;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1, v2}, Lcom/android/mms/ui/EmoticonContainer;->access$4102(Lcom/android/mms/ui/EmoticonContainer;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1, v2}, Lcom/android/mms/ui/EmoticonContainer;->access$4202(Lcom/android/mms/ui/EmoticonContainer;Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move-object/from16 v9, p2

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateFavoriteEmoticon(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->checkFocusedTextview()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->insertEmoticon(Landroid/widget/EditText;Ljava/lang/String;Z)V

    :cond_0
    sget v1, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonCategory:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$900(Lcom/android/mms/ui/EmoticonContainer;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/EmoticonCustomView;

    if-eqz v10, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Lcom/android/mms/ui/EmoticonCustomView;->setCategory(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$4300(Lcom/android/mms/ui/EmoticonContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isStickerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;

    iget-object v14, v11, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;->stickerId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sent_time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v14}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerUriById(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getFreeMessageState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$4100(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setStickerViewFromNewComposer(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->prepareForGetSessionId()Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$4100(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/EmoticonContainer;->asyncSendSticker(Lcom/android/mms/data/Conversation;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$14;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/EmoticonContainer;->insertSticker(Landroid/view/View;)V

    goto/16 :goto_0
.end method
