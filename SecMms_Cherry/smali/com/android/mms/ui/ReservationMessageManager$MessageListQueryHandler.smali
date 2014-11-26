.class final Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ReservationMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # I

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->clearCheckedList()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x70a
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v2, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "onQueryComplete(), MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # invokes: Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v0, v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$1000(Lcom/android/mms/ui/ReservationMessageManager;IZ)V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const-wide/16 v3, 0xc8

    # invokes: Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryDelayed(J)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$1100(Lcom/android/mms/ui/ReservationMessageManager;J)V

    goto :goto_0

    :pswitch_1
    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/ReservationMessageManager;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/ReservationMessageManager;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # invokes: Lcom/android/mms/ui/ReservationMessageManager;->setTotalQuantityTextView(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1300(Lcom/android/mms/ui/ReservationMessageManager;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # invokes: Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v1, v5}, Lcom/android/mms/ui/ReservationMessageManager;->access$1000(Lcom/android/mms/ui/ReservationMessageManager;IZ)V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v2

    if-ge v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->refreshCheckList()Z

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # invokes: Lcom/android/mms/ui/ReservationMessageManager;->isFirstItemChanged()Z
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1500(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1600(Lcom/android/mms/ui/ReservationMessageManager;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # invokes: Lcom/android/mms/ui/ReservationMessageManager;->restoreListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$1700(Lcom/android/mms/ui/ReservationMessageManager;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6a4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    return-void
.end method
