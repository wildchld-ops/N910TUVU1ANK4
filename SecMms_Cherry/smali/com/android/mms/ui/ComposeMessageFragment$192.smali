.class Lcom/android/mms/ui/ComposeMessageFragment$192;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v13, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "request_thread_id"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    int-to-long v8, v13

    const-string v13, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "Mms/ComposeMessageFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mResponseReceiver.onReceive: Received CREATE_CHAT_RESPONSE with givenChatId("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " requestedThreadId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "response_status"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v13, "request_type"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v10

    if-eqz v5, :cond_1

    cmp-long v13, v8, v10

    if-nez v13, :cond_1

    const-string v13, "Mms/ComposeMessageFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mResponseReceiver, Recived CREATE_CHAT_RESPONSE successed, threadId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " givenChatId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-gtz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v14}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->setAnimationIndex(I)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mfiles:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17000(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v14}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/mms/data/WorkingMessage;->isRcsGroupChatMode(Z)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v13}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13, v14, v3}, Lcom/android/mms/rcs/RcsChatManager;->updateThreadChatIdAndAlias(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mfiles:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17000(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBroadcastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBroadcastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBroadcastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13, v3}, Lcom/android/mms/data/Conversation;->setSessionId(Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-nez v13, :cond_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->hideSipWithExitOnSent()V
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v14, 0x2

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage(I)V
    invoke-static {v13, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3300(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    :cond_5
    const-string v13, "Mms/ComposeMessageFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mResponseReceiver, getRecipients().size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v13, "Mms/ComposeMessageFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mResponseReceiver, Received CREATE_CHAT_RESPONSE threadId is > 0, threadId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " givenChatId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v13}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13, v14, v3}, Lcom/android/mms/rcs/RcsChatManager;->updateThreadChatIdAndAlias(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getNotificationEnable()Z
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17200(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mfiles:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17000(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mfiles:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17000(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v17

    invoke-virtual/range {v13 .. v17}, Lcom/android/mms/data/WorkingMessage;->fileSendRcsWorker(Landroid/content/Context;Lcom/android/mms/data/ContactList;Ljava/util/ArrayList;Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mfiles:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17000(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_9
    const-string v13, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "response_status"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v13, "Mms/ComposeMessageFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mResponseReceiver.onReceive: Received ADD_PARTICIPANTS_RESPONSE with givenChatId("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "Mms/ComposeMessageFragment"

    const-string v14, "mResponseReceiver.onReceive: Added participants to exists Group chat"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v13, "Mms/ComposeMessageFragment"

    const-string v14, "mResponseReceiver.onReceive: Make new Group chat session"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v13, "Mms/ComposeMessageFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mResponseReceiver.onReceive: Received ADD_PARTICIPANTS_RESPONSE with error(reason: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "error_reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v14, 0x7f0c04f7

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_c
    const-string v13, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_TYPING_NOTIFICATION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "participant"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "interval"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v13, "is_typing"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v13, "tel:"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->toTyping:Ljava/util/List;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->toTyping:Ljava/util/List;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v14, "Mms/ComposeMessageFragment"

    const-string v15, "onReceive: Typing notification received(chatId: %s, isTyping: %s)"

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    aput-object v2, v16, v13

    const/16 v17, 0x1

    if-eqz v6, :cond_e

    const-string v13, "true"

    :goto_2
    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$192;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13, v12, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->displayTypingUI(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_e
    const-string v13, "false"

    goto :goto_2
.end method
