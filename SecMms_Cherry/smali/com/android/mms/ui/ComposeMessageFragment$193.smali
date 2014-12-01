.class Lcom/android/mms/ui/ComposeMessageFragment$193;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_result_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_session_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_chat_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_change_member"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v12

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mParticipantChangedHandler , msg.what : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17502(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    const/16 v2, 0x3e8

    move/from16 v0, v21

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->showFailtoInviteDialog()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17600(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->queryConversationListIfNeeded(Z)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_FREEMSG_THREAD_INFO_BY_SESSION_ID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    const-string v2, "session_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    const-string v2, "recipient_ids"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v14}, Lcom/android/mms/data/Conversation;->setRecipientIds(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setIsChatClosed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setDefaultSmsComposer()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayoutForGroup:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayoutForGroup:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshToButtonLayoutForGroup()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :pswitch_2
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_FREEMSG_THREAD_INFO_BY_SESSION_ID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    const-string v2, "session_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    :try_start_1
    const-string v2, "recipient_ids"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "im_type"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v14}, Lcom/android/mms/data/Conversation;->setRecipientIds(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setIsChatClosed(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    const/4 v2, 0x1

    if-ne v11, v2, :cond_a

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setDefaultSmsComposer()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayoutForGroup:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayoutForGroup:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshToButtonLayoutForGroup()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->queryConversationListIfNeeded(Z)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_a
    if-nez v11, :cond_0

    if-nez v15, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessageMapCapsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->removeFreeMessageRecipientCapsValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->updateFreeMessageState()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->updateFreeMessageUI()V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    const/16 v2, 0x3e8

    move/from16 v0, v21

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteThreadbySessionID(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->discard()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v17

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSplitDiscard(Z)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->makeCannotCloseChatDialog()V

    goto/16 :goto_0

    :pswitch_4
    const/16 v2, 0xbbe

    move/from16 v0, v21

    if-eq v0, v2, :cond_d

    const/16 v2, 0x138d

    move/from16 v0, v21

    if-eq v0, v2, :cond_d

    const/16 v2, 0x1771

    move/from16 v0, v21

    if-ne v0, v2, :cond_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingInviteReplyDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17502(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClosingChatProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_f
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0554

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c056b

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0182

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$193$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$193$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$193;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteOldRCSMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "session_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "participant_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_typing"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    const-string v2, "tel:"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->toTyping:Ljava/util/List;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->toTyping:Ljava/util/List;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v3, "Mms/ComposeMessageFragment"

    const-string v5, "onReceive: Typing notification received(chatId: %s, isTyping: %s)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v19, v6, v2

    const/4 v7, 0x1

    if-eqz v16, :cond_11

    const-string v2, "true"

    :goto_4
    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move/from16 v0, v16

    invoke-virtual {v2, v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->displayTypingUI(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "false"

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
