.class Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BoxListFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoxListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # I

    const/16 v4, 0x66

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widget.festivalmemory.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v3, 0x0

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z
    invoke-static {v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$3902(Lcom/android/mms/ui/BoxListFrame;Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1100(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->finishMultiSelectMode()V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->setListTitle()V
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$3800(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onDeleteComplete(),DELETE_ALL_BOX_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widget.festivalmemory.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1100(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->finishMultiSelectMode()V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->setListTitle()V
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$3800(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    # invokes: Lcom/android/mms/ui/BoxListFrame;->afterResult(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$2800(Lcom/android/mms/ui/BoxListFrame;I)V

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onQueryComplete] END : token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/BoxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->isMultiSelectMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->refreshCheckedList()V
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2900(Lcom/android/mms/ui/BoxListFrame;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->isFirstItemChanged()Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3000(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    :cond_3
    :goto_1
    packed-switch p1, :pswitch_data_0

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete called with unknown token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3600(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1100(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0310

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3100(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->restoreListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3200(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v2, 0xc8

    # invokes: Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$3300(Lcom/android/mms/ui/BoxListFrame;J)V

    goto :goto_2

    :pswitch_2
    # getter for: Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$3400()Z

    move-result v1

    if-eqz v1, :cond_4

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$3402(Z)Z

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->invokeStartViewerNewMsg(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->access$3500(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$3702(Lcom/android/mms/ui/BoxListFrame;J)J

    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1100(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListViewActivity;->clearFocusOfBoxListIfNeeded()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1100(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->setListTitle()V
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3800(Lcom/android/mms/ui/BoxListFrame;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v2, -0x1

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$3702(Lcom/android/mms/ui/BoxListFrame;J)J

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    return-void
.end method
