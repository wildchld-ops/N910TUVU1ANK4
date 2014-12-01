.class public Lcom/android/mms/saverestore/SaveThreadActivity;
.super Landroid/app/Activity;
.source "SaveThreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/saverestore/SaveThreadActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final MESSAGE_LIST_QUERY_TOKEN:I = 0x2537

.field private static final TAG:Ljava/lang/String; = "Mms/SaveThread"

.field private static sInstanceCount:I


# instance fields
.field final PROJECTION:[Ljava/lang/String;

.field public mAllCheckBox:Landroid/widget/CheckBox;

.field private mAllItem:Landroid/view/View;

.field private mCountToDelete:I

.field mDeleteLockedMessages:Z

.field protected mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field protected mListView:Lcom/android/mms/ui/MessageListView;

.field private mMessageUri:Landroid/net/Uri;

.field private mMsgText:Ljava/lang/CharSequence;

.field private mOk:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field protected mQueryHandler:Lcom/android/mms/saverestore/SaveThreadActivity$ThreadListQueryHandler;

.field private mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

.field private mThreadId:J

.field private recipients:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/saverestore/SaveThreadActivity;->sInstanceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "si_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "teleservice_id"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "link_url"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "service_category"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->PROJECTION:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mDeleteLockedMessages:Z

    return-void
.end method

.method private deriveAddress(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getHighlight()Ljava/util/regex/Pattern;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "highlight"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_0
.end method

.method private getOrCreateThreadId([Ljava/lang/String;)J
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getThreadUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_2

    const-string v2, "recipients"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->recipients:Ljava/lang/String;

    const-string v2, "thread_id"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/saverestore/SaveThreadActivity;->setThreadId(J)V

    const-string v2, "msg_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mMessageUri:Landroid/net/Uri;

    const-string v2, "sms_body"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    const-string v2, ""

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->recipients:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mThreadId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mThreadId:J

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->recipients:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "thread_id"

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/saverestore/SaveThreadActivity;->setThreadId(J)V

    const-string v2, "msg_uri"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mMessageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mThreadId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/saverestore/SaveThreadActivity;->setThreadId(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    const-string v2, "recipients"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->recipients:Ljava/lang/String;

    const-string v2, "sms_body"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mms/SaveThread"

    const-string v3, "Thread ID must be a Long."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/mms/saverestore/SaveThreadActivity;->deriveAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->recipients:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->recipients:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->recipients:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/mms/saverestore/SaveThreadActivity;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/saverestore/SaveThreadActivity;->setThreadId(J)V

    goto :goto_1
.end method

.method private initListView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mAllItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initListener()V
    .locals 0

    return-void
.end method

.method private setThreadId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mThreadId:J

    return-void
.end method

.method private startMsgListQuery()V
    .locals 9

    const/16 v4, 0x2537

    iget-wide v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mQueryHandler:Lcom/android/mms/saverestore/SaveThreadActivity$ThreadListQueryHandler;

    invoke-virtual {v0, v4}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mQueryHandler:Lcom/android/mms/saverestore/SaveThreadActivity$ThreadListQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveThreadActivity;->getThreadUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/android/mms/saverestore/SaveThreadActivity;->sInstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/saverestore/SaveThreadActivity;->sInstanceCount:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/mms/saverestore/SaveThreadActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/saverestore/SaveThreadActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/saverestore/SaveThreadActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mQueryHandler:Lcom/android/mms/saverestore/SaveThreadActivity$ThreadListQueryHandler;

    const v0, 0x7f0b0336

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveThreadActivity;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;Z)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    new-instance v0, Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveThreadActivity;->initListView()V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveThreadActivity;->initListener()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/saverestore/SaveThreadActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveThreadActivity;->startMsgListQuery()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->OnDestroy()V

    return-void
.end method

.method public saveSelectedItems()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveThreadActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->startSaveOperation([JZZ)V

    return-void
.end method
