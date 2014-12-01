.class final Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FileHistoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FileHistoryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FileHistoryListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/FileHistoryListActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const-string v1, "Mms/FileHistoryListActivity"

    const-string v2, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    # getter for: Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FileHistoryListActivity;->access$200(Lcom/android/mms/ui/FileHistoryListActivity;)Lcom/android/mms/ui/FileHistoryListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/FileHistoryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    # invokes: Lcom/android/mms/ui/FileHistoryListActivity;->isFirstItemChanged()Z
    invoke-static {v1}, Lcom/android/mms/ui/FileHistoryListActivity;->access$300(Lcom/android/mms/ui/FileHistoryListActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    # getter for: Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/FileHistoryListActivity;->access$400(Lcom/android/mms/ui/FileHistoryListActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    # getter for: Lcom/android/mms/ui/FileHistoryListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/FileHistoryListActivity;->access$700(Lcom/android/mms/ui/FileHistoryListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    const-string v1, "Mms/FileHistoryListActivity"

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

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    # getter for: Lcom/android/mms/ui/FileHistoryListActivity;->mVisibleOffset:I
    invoke-static {v1}, Lcom/android/mms/ui/FileHistoryListActivity;->access$500(Lcom/android/mms/ui/FileHistoryListActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    # invokes: Lcom/android/mms/ui/FileHistoryListActivity;->restoreListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/FileHistoryListActivity;->access$600(Lcom/android/mms/ui/FileHistoryListActivity;)V

    goto :goto_0
.end method
