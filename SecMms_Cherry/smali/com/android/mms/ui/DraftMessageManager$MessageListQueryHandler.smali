.class final Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DraftMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->clearCheckedList()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/DraftMessageManager;->access$1602(Lcom/android/mms/ui/DraftMessageManager;Z)Z

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x70a
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->checkMessageIdForSmsDrafts(Landroid/database/Cursor;)V

    packed-switch p1, :pswitch_data_0

    const-string v2, "Mms/DraftMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "onQueryComplete(), MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v0, v4}, Lcom/android/mms/ui/DraftMessageManager;->access$800(Lcom/android/mms/ui/DraftMessageManager;IZ)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const-wide/16 v3, 0xc8

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryDelayed(J)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/DraftMessageManager;->access$900(Lcom/android/mms/ui/DraftMessageManager;J)V

    goto :goto_0

    :pswitch_1
    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageManager;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageManager;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->setTotalQuantityTextView(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/DraftMessageManager;->access$1100(Lcom/android/mms/ui/DraftMessageManager;I)V

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v1, v5}, Lcom/android/mms/ui/DraftMessageManager;->access$800(Lcom/android/mms/ui/DraftMessageManager;IZ)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->isFirstItemChanged()Z
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1200(Lcom/android/mms/ui/DraftMessageManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1600(Lcom/android/mms/ui/DraftMessageManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z
    invoke-static {v2, v4}, Lcom/android/mms/ui/DraftMessageManager;->access$1602(Lcom/android/mms/ui/DraftMessageManager;Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1300(Lcom/android/mms/ui/DraftMessageManager;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->restoreListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1400(Lcom/android/mms/ui/DraftMessageManager;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6a4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    return-void
.end method
