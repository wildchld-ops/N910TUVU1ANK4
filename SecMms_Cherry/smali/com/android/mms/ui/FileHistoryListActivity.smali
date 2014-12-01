.class public Lcom/android/mms/ui/FileHistoryListActivity;
.super Landroid/app/Activity;
.source "FileHistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final LIST_MODE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/FileHistoryListActivity"

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x32


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mFirstItemId:J

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

.field public mMsgListMode:I

.field private mQueryHandler:Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;

.field public mSipHandler:Lcom/android/mms/ui/SipHandler;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mVisibleOffset:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mFirstItemId:J

    new-instance v0, Lcom/android/mms/ui/FileHistoryListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FileHistoryListActivity$2;-><init>(Lcom/android/mms/ui/FileHistoryListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mContentChangedListener:Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/FileHistoryListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FileHistoryListActivity$3;-><init>(Lcom/android/mms/ui/FileHistoryListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->onMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FileHistoryListActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/FileHistoryListActivity;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FileHistoryListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FileHistoryListActivity;)Lcom/android/mms/ui/FileHistoryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FileHistoryListActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/FileHistoryListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/FileHistoryListActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/FileHistoryListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/FileHistoryListActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    const-string v0, "Mms/FileHistoryListActivity"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->hideEmptyView()V

    return-void
.end method

.method private hideEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isFirstItemChanged()Z
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mFirstItemId:J

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restoreListOffset()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private startAsyncQuery()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FileHistoryListActivity;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/FileHistoryListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/FileHistoryListActivity$1;-><init>(Lcom/android/mms/ui/FileHistoryListActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "file_path"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "file_size"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "date"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "content_type"

    aput-object v1, v4, v0

    const-string v7, "date DESC"

    const-string v5, "thread_id = ? AND status in (?,?)"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/mms/ui/FileHistoryListActivity;->threadId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mQueryHandler:Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mQueryHandler:Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "file_path"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "file_size"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "date"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "content_type"

    aput-object v1, v4, v0

    const-string v7, "date DESC"

    const-string v5, "thread_id = ? AND status in (?,?)"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/mms/ui/FileHistoryListActivity;->threadId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mQueryHandler:Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mQueryHandler:Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;

    const/16 v1, 0x32

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->beforeQuery()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FileHistoryListActivity;->startAsyncQueryInternal(Z)V

    return-void
.end method


# virtual methods
.method public getCurrentListMode()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListMode:I

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/FileHistoryListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mIsLandscape:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040051

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FileHistoryListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0b0198

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FileHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/FileHistoryListAdapter;

    const/4 v3, 0x0

    const v4, 0x7f040050

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/FileHistoryListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mContentChangedListener:Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/FileHistoryListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/FileHistoryListActivity;->onMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    const v3, 0x7f0b0199

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/FileHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    new-instance v2, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/FileHistoryListActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mQueryHandler:Lcom/android/mms/ui/FileHistoryListActivity$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "thread_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/FileHistoryListActivity;->threadId:J

    if-eqz v0, :cond_0

    const v2, 0x7f0c04d7

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f02007e

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "aaa"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->startAsyncQuery()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FileHistoryListAdapter;->refreshFontSize()V

    invoke-direct {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->startFakeAsyncQuery()V

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FileHistoryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1

    iput p1, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListMode:I

    iget v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListMode:I

    return v0
.end method

.method public setListModeLayout(IZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/FileHistoryListActivity;->setListModeLayout(IZZZ)V

    return-void
.end method

.method public setListModeLayout(IZZZ)V
    .locals 3

    const-string v0, "Mms/FileHistoryListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListModeLayout(),listMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",requestLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FileHistoryListActivity;->setCurrentListMode(I)I

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mMsgListAdapter:Lcom/android/mms/ui/FileHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/FileHistoryListAdapter;->setMessageListMode(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FileHistoryListActivity;->invalidateOptionsMenu()V

    return-void
.end method
