.class final Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AddThreadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/prioritysender/AddThreadListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v3, "Mms/AddThreadListActivity"

    const-string v4, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-static {v3}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/mms/prioritysender/ThreadListCursor;

    invoke-direct {v2, p3, v1}, Lcom/android/mms/prioritysender/ThreadListCursor;-><init>(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$200(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/prioritysender/ThreadListCursor;->getCount()I

    move-result v0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddThreadListActivity;->updateEmptyScreen(I)V
    invoke-static {v3, v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$600(Lcom/android/mms/prioritysender/AddThreadListActivity;I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$200(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
    .end packed-switch
.end method
