.class Lcom/android/mms/ui/SearchActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17

    const-string v12, "Mms/SearchActivity"

    const-string v13, "onQueryComplete"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/mms/data/Conversation;->conversationInfoOneBubbleCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v10

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I

    move-result v1

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/database/MatrixCursor;->getCount()I

    move-result v12

    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    # invokes: Lcom/android/mms/ui/SearchActivity;->makeEmptyThreadCursor()Landroid/database/MatrixCursor;
    invoke-static {v12}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Landroid/database/MatrixCursor;

    move-result-object v7

    new-instance v3, Landroid/database/MergeCursor;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/database/Cursor;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-direct {v3, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v10}, Landroid/database/MatrixCursor;->getCount()I

    move-result v13

    # setter for: Lcom/android/mms/ui/SearchActivity;->mThreadCount:I
    invoke-static {v12, v13}, Lcom/android/mms/ui/SearchActivity;->access$202(Lcom/android/mms/ui/SearchActivity;I)I

    :goto_0
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    # invokes: Lcom/android/mms/ui/SearchActivity;->makeEmptyBubbleCursor()Landroid/database/MatrixCursor;
    invoke-static {v12}, Lcom/android/mms/ui/SearchActivity;->access$300(Lcom/android/mms/ui/SearchActivity;)Landroid/database/MatrixCursor;

    move-result-object v5

    new-instance v2, Landroid/database/MergeCursor;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/database/Cursor;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    aput-object p3, v12, v13

    invoke-direct {v2, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    # setter for: Lcom/android/mms/ui/SearchActivity;->mBubbleCount:I
    invoke-static {v12, v13}, Lcom/android/mms/ui/SearchActivity;->access$402(Lcom/android/mms/ui/SearchActivity;I)I

    :goto_1
    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    # invokes: Lcom/android/mms/ui/SearchActivity;->getTotalCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v12, v3, v2}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v11

    :cond_0
    :goto_2
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/database/MatrixCursor;->close()V

    const/4 v10, 0x0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_2
    const/4 v4, 0x0

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    :cond_3
    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v13, -0x1

    iput v13, v12, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v13, -0x1

    iput v13, v12, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    # invokes: Lcom/android/mms/ui/SearchActivity;->setSeparatorInfo(Landroid/database/Cursor;)V
    invoke-static {v12, v11}, Lcom/android/mms/ui/SearchActivity;->access$600(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v12, v12, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v12, v11}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    # getter for: Lcom/android/mms/ui/SearchActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/mms/ui/SearchActivity;->access$700(Lcom/android/mms/ui/SearchActivity;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v12, v12, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListView;->isInTouchMode()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v12, v12, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v12, v12, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/MessageListView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v12, v12, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListView;->requestFocus()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v12, v12, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v13, 0x1020004

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object v6, v12

    check-cast v6, Landroid/widget/TextView;

    if-lez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v12}, Lcom/android/mms/ui/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/android/mms/MmsApp;

    invoke-virtual {v12}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v13, 0x7f0c00de

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v6, :cond_6

    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    move-object v3, v10

    goto/16 :goto_0

    :cond_8
    move-object/from16 v2, p3

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x1

    if-ne v1, v12, :cond_c

    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    const/16 p3, 0x0

    :cond_a
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_b
    new-instance v11, Landroid/database/MergeCursor;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/database/Cursor;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    invoke-direct {v11, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_2

    :cond_c
    const/4 v12, 0x2

    if-ne v1, v12, :cond_0

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/database/MatrixCursor;->close()V

    const/4 v10, 0x0

    :cond_d
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_e
    new-instance v11, Landroid/database/MergeCursor;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/database/Cursor;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-direct {v11, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_2

    :cond_f
    if-eqz v6, :cond_6

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_3
.end method
