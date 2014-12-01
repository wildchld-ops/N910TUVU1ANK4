.class Lcom/android/mms/ui/ComposeMessageFragment$196;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v7, "extra_thread_id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v7, "extra_session_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v15

    const-string v7, "extra_result_code"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v7, "com.android.mms.freemessage.ACTION_CREATE_CHAT_RESPONSE"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Mms/ComposeMessageFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mInitChatReceiver, Recived CREATE_CHAT_RESPONSE successed, threadId="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v0, v15

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, " sessionID="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3e8

    if-ne v13, v7, :cond_8

    cmp-long v7, v11, v15

    if-nez v7, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v7, v15, v7

    if-gtz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v8}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MessageListAdapter;->setAnimationIndex(I)V

    :cond_0
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7, v14}, Lcom/android/mms/data/Conversation;->setSessionId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18102(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getDataGroupChatFtFromNewComposer()Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getStickerViewFromNewComposer()Landroid/view/View;

    move-result-object v17

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->fileSendForFreeMessageFT(Landroid/content/Intent;Lcom/android/mms/data/ContactList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonContainer:Lcom/android/mms/ui/EmoticonContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/EmoticonContainer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v0, v17

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/EmoticonContainer;->asyncSendSticker(Lcom/android/mms/data/Conversation;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->OnClickSendButton()V
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_4
    const-string v7, "Mms/ComposeMessageFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mInitChatReceiver, Received CREATE_CHAT_RESPONSE threadId is > 0, threadId="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v0, v15

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, " sessionID="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-wide v0, v15

    invoke-virtual {v7, v0, v1, v14}, Lcom/android/mms/data/WorkingMessage;->updateThreadSessionId(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18102(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getDataGroupChatFtFromNewComposer()Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getStickerViewFromNewComposer()Landroid/view/View;

    move-result-object v17

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->fileSendForFreeMessageFT(Landroid/content/Intent;Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonContainer:Lcom/android/mms/ui/EmoticonContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/EmoticonContainer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v0, v17

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/EmoticonContainer;->asyncSendSticker(Lcom/android/mms/data/Conversation;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->OnClickSendButton()V
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "session_id"

    invoke-virtual {v6, v7, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "normal_thread_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingSessionIdDialog:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18102(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$196;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->showFailtoGetSessionIdDialog()V
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0
.end method
