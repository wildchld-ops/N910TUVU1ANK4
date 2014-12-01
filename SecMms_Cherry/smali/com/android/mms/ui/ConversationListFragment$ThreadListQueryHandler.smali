.class final Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 15

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1502(Z)Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationListFragment;->checkAnim:Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$4202(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete(),DELETE_ALL_CONVERSATION_TOKEN, isMultiSelectMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.sec.android.widget.festivalmemory.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/mms/ui/ConversationComposer;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->clearCache()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete() result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move/from16 v0, p3

    int-to-long v2, v0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$4302(Lcom/android/mms/ui/ConversationListFragment;J)J

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN, isMultiSelectMode() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move/from16 v0, p3

    int-to-long v2, v0

    # += operator for: Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$4314(Lcom/android/mms/ui/ConversationListFragment;J)J

    if-eqz p2, :cond_a

    move-object/from16 v9, p2

    check-cast v9, Lcom/android/mms/ui/DeleteInfo;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-wide v12, v9, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    iget-object v11, v9, Lcom/android/mms/ui/DeleteInfo;->mSessioinId:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/mms/ui/DeleteInfo;->mChatId:Ljava/lang/String;

    if-lez p3, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v13, v2}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    :cond_4
    if-eqz v7, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-static {v8}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteChats(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    invoke-static {v12, v13}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    iget-boolean v1, v9, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p3, :cond_6

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete() result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.sec.android.widget.festivalmemory.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/mms/ui/ConversationComposer;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    const-wide/16 v2, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->rcsGroupchatInviteNotification(Landroid/content/Context;JLjava/lang/String;ZI)V

    :cond_8
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$7500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    iget-wide v2, v9, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationComposer;->removeComposeFragmentWithoutPreProcess(J)V

    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v32

    const/16 v33, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getSplitModePreference()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    goto :goto_0

    :sswitch_0
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onQueryComplete(),THREAD_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v33

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move/from16 v0, v33

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(I)V
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$6400(Lcom/android/mms/ui/ConversationListFragment;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-eqz v33, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    if-nez v2, :cond_8

    if-eqz v33, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$6500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->startPrioritySenderQuery()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1900(Lcom/android/mms/ui/ConversationListFragment;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_2

    :sswitch_1
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v33

    :cond_c
    const/16 v40, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3700(Lcom/android/mms/ui/ConversationListFragment;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    if-eqz v35, :cond_d

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v40

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move/from16 v0, v33

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$6600(Lcom/android/mms/ui/ConversationListFragment;I)V

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v32, :cond_10

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move/from16 v0, v33

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(I)V
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$6400(Lcom/android/mms/ui/ConversationListFragment;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_12

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    # getter for: Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1502(Z)Z

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->startedFromLaundher()Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$6700(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v3, -0x1

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$6802(Lcom/android/mms/ui/ConversationListFragment;I)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->getListItemSelected()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v41

    if-eqz v41, :cond_16

    const-string v2, "message_type"

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    const-string v2, "1"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->getPosition()I

    move-result v39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    move/from16 v0, v39

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    :cond_16
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/reflector/AmbsReflector;->isInitSync()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$6800(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v3

    move/from16 v0, v40

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelectionFromTop(II)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    if-eqz v33, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v33, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isKnoxExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_3

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$6900(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3700(Lcom/android/mms/ui/ConversationListFragment;)V

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$6800(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7000(Lcom/android/mms/ui/ConversationListFragment;)V

    goto/16 :goto_4

    :sswitch_2
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7100(Lcom/android/mms/ui/ConversationListFragment;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_21

    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v33

    const-string v2, "session_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    const-string v2, "session_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_23

    if-ltz v42, :cond_23

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_1e
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1f

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1e

    :cond_20
    :goto_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_21
    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Lcom/android/mms/ui/ConversationListAdapter;->setHasLockedMsg(J)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getSessionIdByThreadId(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_28

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLjava/lang/String;Landroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_26

    const/4 v2, 0x1

    move v3, v2

    :goto_6
    if-lez v33, :cond_27

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v6

    invoke-static {v4, v3, v2, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, v34

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1102(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    goto/16 :goto_1

    :cond_23
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_20

    if-ltz v31, :cond_20

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_24
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_25

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_26
    const/4 v2, 0x0

    move v3, v2

    goto :goto_6

    :cond_27
    const/4 v2, 0x0

    goto :goto_7

    :cond_28
    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v20}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLjava/lang/String;Landroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_29

    const/4 v2, 0x1

    move v3, v2

    :goto_9
    if-lez v33, :cond_2a

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v6

    invoke-static {v4, v3, v2, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :cond_29
    const/4 v2, 0x0

    move v3, v2

    goto :goto_9

    :cond_2a
    const/4 v2, 0x0

    goto :goto_a

    :cond_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_2e

    new-instance v16, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v10

    invoke-direct/range {v16 .. v25}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLjava/lang/String;Landroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    move v3, v2

    :goto_b
    if-lez v33, :cond_2d

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v6

    invoke-static {v4, v3, v2, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :cond_2c
    const/4 v2, 0x0

    move v3, v2

    goto :goto_b

    :cond_2d
    const/4 v2, 0x0

    goto :goto_c

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/rcs/RcsQuery;->getChatIdByThreadId(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v20

    new-instance v16, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v18, v13

    invoke-direct/range {v16 .. v25}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLjava/lang/String;Landroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    move v3, v2

    :goto_d
    if-lez v33, :cond_30

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v6

    invoke-static {v4, v3, v2, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :cond_2f
    const/4 v2, 0x0

    move v3, v2

    goto :goto_d

    :cond_30
    const/4 v2, 0x0

    goto :goto_e

    :cond_31
    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v7

    const/4 v8, 0x0

    move-wide v4, v13

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_32

    const/4 v2, 0x1

    move v3, v2

    :goto_f
    if-lez v33, :cond_33

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v6

    invoke-static {v4, v3, v2, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :cond_32
    const/4 v2, 0x0

    move v3, v2

    goto :goto_f

    :cond_33
    const/4 v2, 0x0

    goto :goto_10

    :sswitch_3
    if-eqz p3, :cond_0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v36, 0x0

    :try_start_2
    const-string v2, "thread_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setHasLockedMsg(J)V

    :cond_35
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_34

    :cond_36
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    move-object/from16 v28, v2

    check-cast v28, [Ljava/lang/Long;

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7100(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    new-instance v21, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v22, v0

    const-wide/16 v23, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedSessionIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-direct/range {v21 .. v30}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLjava/lang/String;Landroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v5

    move/from16 v0, v36

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, v34

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1102(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_38
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v21, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v22, v0

    const-wide/16 v23, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v27

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedChatIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v30

    invoke-direct/range {v21 .. v30}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLjava/lang/String;Landroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v5

    move/from16 v0, v36

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    goto :goto_11

    :cond_39
    new-instance v22, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v23, v0

    const-wide/16 v24, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v27

    invoke-direct/range {v22 .. v28}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v5

    move/from16 v0, v36

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v34

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_11

    :sswitch_4
    if-eqz p3, :cond_3a

    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p2

    check-cast v0, Landroid/view/Menu;

    move-object/from16 v37, v0

    const/16 v2, 0xce

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3a
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    if-eqz p3, :cond_3b

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x6a4 -> :sswitch_0
        0x6a5 -> :sswitch_1
        0x70b -> :sswitch_2
        0x70d -> :sswitch_3
        0x70e -> :sswitch_4
    .end sparse-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    return-void
.end method
