.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# static fields
.field static final SEARCH_ALL:I = 0x0

.field static final SEARCH_MESSAGE:I = 0x2

.field private static final SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

.field public static final SEARCH_PROJECTION:[Ljava/lang/String;

.field private static final SEARCH_QUERY_TOKEN:I = 0x1fa4

.field static final SEARCH_SENDER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/SearchActivity"

.field static final THREAD_PROJECTION:[Ljava/lang/String;

.field private static mIsSearchMode:Z


# instance fields
.field private final HIDE:I

.field private final SHOW:I

.field private mBubbleCount:I

.field public mBubbleStartIdx:I

.field private mBubbleTitle:Ljava/lang/String;

.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mHandler2:Landroid/os/Handler;

.field public mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field public mListView:Lcom/android/mms/ui/MessageListView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSearchString:Ljava/lang/String;

.field private mThreadCount:I

.field public mThreadStartIdx:I

.field private mThreadTitle:Ljava/lang/String;

.field public needToQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "messages/totalsearch"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_recipient_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->THREAD_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x44

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "si_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "teleservice_id"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "link_url"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "text_only"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "svc_cmd"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "svc_cmd_content"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "normalized_date"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "listorder"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "transaction_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "content_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "bytes_transf"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "cancel_reason"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "thumbnail_path"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "file_path"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "display_notification_status"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "displayed_counter"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "imdn_message_id"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "rcsdb_id"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "user_alias"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "delivered_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "remote_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "service_type"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "reject_reason"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "chat_session_id"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "message_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/ui/SearchActivity;->mIsSearchMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/mms/ui/SearchActivity;->SHOW:I

    iput v2, p0, Lcom/android/mms/ui/SearchActivity;->HIDE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    iput v1, p0, Lcom/android/mms/ui/SearchActivity;->mThreadCount:I

    iput v1, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleCount:I

    iput-boolean v2, p0, Lcom/android/mms/ui/SearchActivity;->needToQuery:Z

    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    new-instance v0, Lcom/android/mms/ui/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$3;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mHandler2:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/SearchActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$6;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SearchActivity;

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchActivity;)Landroid/database/MatrixCursor;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SearchActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->makeEmptyThreadCursor()Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/SearchActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SearchActivity;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/SearchActivity;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/SearchActivity;->mThreadCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SearchActivity;)Landroid/database/MatrixCursor;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SearchActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->makeEmptyBubbleCursor()Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SearchActivity;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/SearchActivity;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SearchActivity;
    .param p1    # Landroid/database/Cursor;
    .param p2    # Landroid/database/Cursor;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SearchActivity;->getTotalCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/SearchActivity;
    .param p1    # Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchActivity;->setSeparatorInfo(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SearchActivity;

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mHandler2:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SearchActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/SearchActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SearchActivity;

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method private getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Intent;

    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "pattern"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private getTotalCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .param p1    # Landroid/database/Cursor;
    .param p2    # Landroid/database/Cursor;

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    if-eqz v0, :cond_0

    new-instance v10, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {v10, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :goto_0
    return-object v10

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p2, 0x0

    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "title"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-instance v10, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-direct {v10, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "title"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-instance v10, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {v10, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 p1, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 p2, 0x0

    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "title"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "title"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-instance v10, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {v10, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeEmptyBubbleCursor()Landroid/database/MatrixCursor;
    .locals 10

    const/4 v1, 0x0

    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string v0, "bubble"

    const-string v4, "title"

    const/4 v6, 0x1

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v9
.end method

.method private makeEmptyThreadCursor()Landroid/database/MatrixCursor;
    .locals 10

    const/4 v2, 0x0

    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string v0, "thread"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "title"

    const/4 v6, 0x0

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v9
.end method

.method public static makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
    .param p4    # Ljava/lang/Object;
    .param p5    # Ljava/lang/Object;
    .param p6    # I
    .param p7    # Ljava/lang/Object;
    .param p8    # Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v0, 0x44

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object p4, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object p5, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    aput-object v3, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    aput-object p7, v0, v1

    const/16 v1, 0x2b

    aput-object p8, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    const/16 v1, 0x40

    aput-object v3, v0, v1

    const/16 v1, 0x41

    aput-object v3, v0, v1

    const/16 v1, 0x42

    aput-object v3, v0, v1

    const/16 v1, 0x43

    aput-object v3, v0, v1

    return-object v0
.end method

.method private setSeparatorInfo(Landroid/database/Cursor;)V
    .locals 11
    .param p1    # Landroid/database/Cursor;

    const/4 v5, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "listorder"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_7

    iget v2, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    if-ne v2, v5, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    const-string v2, "Mms/SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSearchThreadStratId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    iget v2, p0, Lcom/android/mms/ui/SearchActivity;->mThreadCount:I

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadCount:I

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "%d"

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/mms/ui/SearchActivity;->mThreadCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    const-string v2, "Mms/SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThreadTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v2, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleCount:I

    if-lez v2, :cond_6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0001

    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleCount:I

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "%d"

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    const-string v2, "Mms/SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBubbleTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v3, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->setThreadInfo(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v3, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->setBubbleInfo(JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne v0, v9, :cond_3

    iget v2, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    if-ne v2, v5, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    const-string v2, "Mms/SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSearchMessageStratIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private showProgressDialog()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/SearchActivity"

    const-string v1, "activity finishing..just bail..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v0, ""

    const v1, 0x7f0c0181

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/mms/ui/SearchActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SearchActivity$5;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0
.end method

.method private startQuery(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;

    const/16 v1, 0x1fa4

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Mms/SearchActivity"

    const-string v1, "now is searching"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mHandler2:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v0, "Mms/SearchActivity"

    const-string v4, "startQuery"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "pattern"

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v4, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    const-string v5, "thread_id<>?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1    # Landroid/view/KeyEvent;

    const/4 v6, -0x1

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v3, "Mms/SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent(),keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x42

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-le v1, v6, :cond_0

    iget v3, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->changeShowingThreads()V

    :goto_0
    return v2

    :cond_0
    if-le v1, v6, :cond_1

    iget v3, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->changeShowingBubbles()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public hideProgressDialog()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    const-string v0, "Mms/SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/SearchActivity;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/ui/SearchActivity;->mIsSearchMode:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    const-string v0, "Mms/SearchActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    iput v3, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    iput v3, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const v0, 0x7f0b033b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setEnableDragBlock(Z)V

    iput-boolean v4, p0, Lcom/android/mms/ui/SearchActivity;->needToQuery:Z

    new-instance v0, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v0, p0, v7}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    const-string v0, "Mms/SearchActivity"

    const-string v1, "onCreateOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SearchActivity;->needToQuery:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setHighlightMsgID(J)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    const-string v0, "Mms/SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setSearchString(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->onStart()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const-string v0, "Mms/SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() : item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setHighlightMsgID(J)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 8

    const/4 v7, 0x1

    const-string v4, "Mms/SearchActivity"

    const-string v5, "onStart()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    iget-boolean v4, p0, Lcom/android/mms/ui/SearchActivity;->needToQuery:Z

    if-eqz v4, :cond_3

    const v4, 0x1020004

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/data/Conversation;->isCached:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "searchMode"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "direct"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "intent_extra_from"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "thread_id"

    const-string v5, "thread_id"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "highlight"

    const-string v5, "pattern"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "message_type"

    const-string v5, "message_type"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "select_id"

    const-string v5, "select_id"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "FromSearchActivity"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v1, :cond_2

    const-string v4, "galaxyfinder"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "FromGalaxyFinder"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_4
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/mms/ui/SearchActivity$4;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/SearchActivity$4;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->hideProgressDialog()V

    return-void
.end method
