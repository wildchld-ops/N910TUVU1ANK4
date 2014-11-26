.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ImData;,
        Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;,
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;,
        Lcom/android/mms/ui/MessageListAdapter$ArrayData;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field static final COLUMN_FREEMESSAGE_CONTENT_BYTES_TRANSF:I = 0x2f

.field static final COLUMN_FREEMESSAGE_CONTENT_FILE_SIZE:I = 0x30

.field static final COLUMN_FREEMESSAGE_CONTENT_TYPE:I = 0x2d

.field static final COLUMN_FREEMESSAGE_DATE_SENT:I = 0x39

.field static final COLUMN_FREEMESSAGE_DISPLAYED_COUNTER:I = 0x37

.field static final COLUMN_FREEMESSAGE_DISPLAY_NOTIFICATION_STATUS:I = 0x36

.field static final COLUMN_FREEMESSAGE_FILENAME:I = 0x32

.field static final COLUMN_FREEMESSAGE_FILEPATH:I = 0x34

.field static final COLUMN_FREEMESSAGE_FT_CANCEL_REASON:I = 0x31

.field static final COLUMN_FREEMESSAGE_MEDIA_ID:I = 0x2e

.field static final COLUMN_FREEMESSAGE_MESSAGE_TYPE:I = 0x35

.field static final COLUMN_FREEMESSAGE_RECIPIENTS:I = 0x3a

.field static final COLUMN_FREEMESSAGE_RESERVED:I = 0x38

.field static final COLUMN_FREEMESSAGE_SESSION_ID:I = 0x2b

.field static final COLUMN_FREEMESSAGE_THUMBNAILPATH:I = 0x33

.field static final COLUMN_FREEMESSAGE_TRANSACTION_ID:I = 0x2c

.field public static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_DATE:I = 0xe

.field static final COLUMN_MMS_DELIVERY_REPORT:I = 0x12

.field static final COLUMN_MMS_ERROR_TYPE:I = 0x14

.field static final COLUMN_MMS_LOCKED:I = 0x15

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x11

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0x10

.field static final COLUMN_MMS_MID:I = 0x2b

.field static final COLUMN_MMS_PRIORITY:I = 0x21

.field static final COLUMN_MMS_READ:I = 0xf

.field static final COLUMN_MMS_READ_REPORT:I = 0x13

.field static final COLUMN_MMS_RESERVED:I = 0x1f

.field static final COLUMN_MMS_SUBJECT:I = 0xc

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xd

.field static final COLUMN_MMS_TEXT_ONLY:I = 0x25

.field static final COLUMN_MMS_TRID:I = 0x2c

.field public static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_RCS_DELIVERED_TIMESTAMP:I = 0x3e

.field static final COLUMN_RCS_FT_CHAT_SESSION_ID:I = 0x42

.field static final COLUMN_RCS_FT_MESSAGE_TYPE:I = 0x43

.field static final COLUMN_RCS_FT_REJECT_REASON:I = 0x41

.field static final COLUMN_RCS_IMDM_ID:I = 0x3b

.field static final COLUMN_RCS_RCSDB_ID:I = 0x3c

.field static final COLUMN_RCS_REMOTE_URI:I = 0x3f

.field static final COLUMN_RCS_SERVICE_TYPE:I = 0x40

.field static final COLUMN_RCS_USER_ALIAS:I = 0x3d

.field static final COLUMN_SERVICE_CATEGORY:I = 0x24

.field public static final COLUMN_SIM_IMSI:I = 0x2a

.field public static final COLUMN_SIM_SLOT:I = 0x29

.field static final COLUMN_SMSMMS_SAFE_MESSAGE:I = 0x2d

.field static final COLUMN_SMSMMS_SPAM_REPORT:I = 0x28

.field public static final COLUMN_SMS_ADDRESS:I = 0x3

.field public static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_CALLBACK:I = 0x1d

.field public static final COLUMN_SMS_DATE:I = 0x5

.field public static final COLUMN_SMS_DATE_SENT:I = 0x6

.field static final COLUMN_SMS_ERROR_CODE:I = 0xb

.field static final COLUMN_SMS_GROUP_ID:I = 0x16

.field static final COLUMN_SMS_GROUP_TYPE:I = 0x17

.field static final COLUMN_SMS_LINK_URL:I = 0x23

.field static final COLUMN_SMS_LOCKED:I = 0xa

.field static final COLUMN_SMS_PRIORITY:I = 0x20

.field public static final COLUMN_SMS_READ:I = 0x7

.field static final COLUMN_SMS_RESERVED:I = 0x1e

.field public static final COLUMN_SMS_STATUS:I = 0x9

.field static final COLUMN_SMS_SVC_CMD:I = 0x26

.field static final COLUMN_SMS_SVC_CMD_CONTENT:I = 0x27

.field static final COLUMN_SMS_TELESERVICE_ID:I = 0x22

.field public static final COLUMN_SMS_TYPE:I = 0x8

.field public static final COLUMN_THREAD_ID:I = 0x2

.field static final COLUMN_WPM_ACTION:I = 0x1c

.field static final COLUMN_WPM_CREATED:I = 0x1a

.field static final COLUMN_WPM_DATE:I = 0x5

.field static final COLUMN_WPM_HREF:I = 0x18

.field static final COLUMN_WPM_LOCKED:I = 0xa

.field static final COLUMN_WPM_PUSH_TYPE:I = 0x8

.field static final COLUMN_WPM_READ:I = 0x7

.field static final COLUMN_WPM_SI_EXPIRES:I = 0x1b

.field static final COLUMN_WPM_SI_ID:I = 0x19

.field static final COLUMN_WPM_TEXT:I = 0x4

.field private static final GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final GROUP_TYPE:Ljava/lang/String; = "group_type"

.field public static final INCOMING_ITEM_TYPE:I = 0x0

.field public static final MESSAGE_LIST_ITEM2:I = 0x7f04006a

.field public static final NO_POSITION:I = -0x1

.field public static final OUTGOING_ITEM_TYPE:I = 0x1

.field static PROJECTION:[Ljava/lang/String; = null

.field static final PROJECTION_CMAS:[Ljava/lang/String;

.field private static final SEARCH_LIST_ITEM:I = 0x7f040098

.field private static final TAG:Ljava/lang/String; = "Mms/MessageListAdapter"

.field private static final Y_OFFSET:I = -0x2710


# instance fields
.field public mAdapterSearchMode:Z

.field private mAnimationIdx:I

.field private mBubbleIdx:J

.field private mBubbleTitle:Ljava/lang/String;

.field private mCheckedImChatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedImFtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateSeperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ArrayData;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedImChatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedImFtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mFlickAnimation:Landroid/view/animation/Animation;

.field private mFontSizeIndex:I

.field public mHasScheduledBubbles:Z

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mIsCombAndForwMode:Z

.field private mIsCopyToSimMode:Z

.field public mIsEnableTranslator:Z

.field private mIsGroupConversation:Z

.field private mIsMultiMode:Z

.field private mIsSelectItemBottom:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private final mListView:Landroid/widget/ListView;

.field private mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSearchItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mSearchString:Ljava/lang/String;

.field private mSelectPosition:I

.field public mShowingBubbles:Z

.field public mShowingThreads:Z

.field private mThreadIdx:J

.field private mThreadTitle:Ljava/lang/String;

.field private mWorkingMessageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/mms/ui/MessageListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

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

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "severity"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "urgency"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "certainty"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "identifier"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "alert_handling"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "language"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION_CMAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/widget/ListView;
    .param p4    # Z
    .param p5    # Ljava/util/regex/Pattern;
    .param p6    # Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCombAndForwMode:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasScheduledBubbles:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsEnableTranslator:Z

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimationIdx:I

    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mFlickAnimation:Landroid/view/animation/Animation;

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mFontSizeIndex:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    iput-boolean p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsEnableTranslator:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    const/16 v1, 0x32

    const/high16 v2, 0x3f800000

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    if-eqz p4, :cond_0

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZZLjava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/widget/ListView;
    .param p4    # Z
    .param p5    # Z
    .param p6    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCombAndForwMode:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasScheduledBubbles:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsEnableTranslator:Z

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimationIdx:I

    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mFlickAnimation:Landroid/view/animation/Animation;

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mFontSizeIndex:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mSearchString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSearchString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSearchString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$2;

    const/16 v1, 0x32

    const/high16 v2, 0x3f800000

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$2;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageSearchItemCache:Ljava/util/LinkedHashMap;

    if-eqz p4, :cond_1

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void

    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static formatDate(J)J
    .locals 6
    .param p0    # J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-long v4, v4

    return-wide v4
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # J

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getIsMultiMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiMode:Z

    return v0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # J

    const-wide/16 v3, 0x2710

    const-wide/16 v1, -0x2710

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    mul-long/2addr p1, v1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "im"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    mul-long/2addr p1, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "im"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-long/2addr p1, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    mul-long/2addr p1, v3

    goto :goto_0

    :cond_4
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-long p1, p1

    goto :goto_0
.end method

.method private static getProjection()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x44

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

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

    const-string v2, "spam_report"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "sim_imsi"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "transaction_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "content_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "bytes_transf"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "cancel_reason"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "thumbnail_path"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "file_path"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "display_notification_status"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "displayed_counter"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "recipients"

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

    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x2e

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

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

    const-string v2, "spam_report"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "sim_imsi"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "safe_message"

    aput-object v2, v0, v1

    goto/16 :goto_0
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .param p1    # Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAnimation(I)Z
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimationIdx:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setProjection()V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/MessageListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private setSearchTitle(Landroid/database/Cursor;Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/database/Cursor;
    .param p2    # Landroid/view/View;

    const v7, 0x7f0b0341

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f0b0340

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f0b0342

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v7, 0x7f020367

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    int-to-long v0, v7

    iget-wide v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadIdx:J

    cmp-long v7, v7, v0

    if-eqz v7, :cond_0

    iget-wide v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    cmp-long v7, v7, v0

    if-nez v7, :cond_5

    :cond_0
    iget-wide v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadIdx:J

    cmp-long v7, v0, v7

    if-nez v7, :cond_3

    new-instance v7, Lcom/android/mms/ui/MessageListAdapter$3;

    invoke-direct {v7, p0, v2}, Lcom/android/mms/ui/MessageListAdapter$3;-><init>(Lcom/android/mms/ui/MessageListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadTitle:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c058f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0591

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c058f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0590

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-wide v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/mms/ui/MessageListAdapter$4;

    invoke-direct {v7, p0, v2}, Lcom/android/mms/ui/MessageListAdapter$4;-><init>(Lcom/android/mms/ui/MessageListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleTitle:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c058f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0591

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c058f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0590

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-wide v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    iget-wide v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long v7, v0, v7

    if-nez v7, :cond_6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f0b021c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public backupCheckedList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedImChatList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 26
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    if-eqz p1, :cond_c

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/mms/ui/MessageListItem;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsReserved:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v24, 0x0

    cmp-long v4, v8, v24

    if-gtz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReserved:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v24, 0x0

    cmp-long v4, v8, v24

    if-lez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mHasScheduledBubbles:Z

    :cond_1
    const/16 v19, -0x1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    move-object/from16 v18, p1

    check-cast v18, Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListItem;->setActivity(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    if-eqz v4, :cond_5

    const-string v4, "listorder"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->setSearchTitle(Landroid/database/Cursor;Landroid/view/View;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    int-to-long v11, v4

    const-string v4, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/ui/MessageListAdapter;->mThreadIdx:J

    cmp-long v4, v8, v11

    if-nez v4, :cond_3

    if-eqz v21, :cond_3

    const-string v4, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchThreadTitle:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/ui/MessageListItem;->drawTitleOnly(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    cmp-long v4, v8, v11

    if-nez v4, :cond_4

    if-eqz v21, :cond_4

    const-string v4, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchBubbleTitle:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/ui/MessageListItem;->drawTitleOnly(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/ui/MessageListAdapter;->mThreadIdx:J

    const-wide/16 v24, -0x1

    cmp-long v4, v8, v24

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    const-wide/16 v24, -0x1

    cmp-long v4, v8, v24

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/android/mms/ui/MessageListItem;->setLastIndex(J)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v20

    if-nez v20, :cond_6

    const-string v4, "Mms/MessageListAdapter"

    const-string v8, "bind abort, no data"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v4

    if-eqz v4, :cond_8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v22

    if-eqz v23, :cond_7

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_7

    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v4, v13, v8

    if-nez v4, :cond_7

    const-string v4, "Mms/MessageListAdapter"

    const-string v8, "MessageListAdapter::bindView()-return: "

    invoke-static {v4, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v15

    :try_start_2
    const-string v4, "Mms/MessageListAdapter"

    const-string v8, "Thread ID must be a Long."

    invoke-static {v4, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v4, "mms"

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v4, :cond_8

    if-eqz p1, :cond_2

    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListAdapter;->getIsMultiMode()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsCombAndForwMode:Z

    if-eqz v4, :cond_13

    :cond_9
    const/4 v10, 0x0

    const-string v4, "sms"

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsCombAndForwMode:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "Mms/MessageListAdapter"

    const-string v8, "COMBINE_AND_FORWARD_MESSAGE only for mms (phase 1)"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v10}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    :goto_2
    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/ConversationComposer;->setMessageSelectAll(Z)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-wide/from16 v0, v24

    invoke-direct {v8, v0, v1, v9}, Lcom/android/mms/ui/MessageListAdapter$ArrayData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsEnableTranslator:Z

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->needAnimation(I)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_5
    const-string v4, "thread"

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListItem;->getThreadLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFlickThreadView()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mFlickAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mFlickAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_d
    const-string v4, "Mms/MessageListAdapter"

    const-string v8, "bind complete()"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v4, "wpm"

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    if-ltz v4, :cond_10

    const-string v4, "im"

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v17, Lcom/android/mms/ui/MessageListAdapter$ImData;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v4, v8}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    if-ltz v4, :cond_11

    const-string v4, "ft"

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v17, Lcom/android/mms/ui/MessageListAdapter$ImData;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v4, v8}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v10}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    goto/16 :goto_2

    :cond_13
    const/16 v4, 0x8

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v8}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    goto/16 :goto_3

    :cond_14
    const-string v4, "Mms/MessageListAdapter"

    const-string v8, "mDateSeperatorList == null"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    goto/16 :goto_4

    :cond_15
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListAdapter;->resetAnimationIndex()V

    goto/16 :goto_5
.end method

.method public canCachedMessageItemBeCombineForwarded(Ljava/lang/String;JLandroid/database/Cursor;)Z
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Landroid/database/Cursor;

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    if-nez v9, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    :goto_1
    return v1

    :catch_0
    move-exception v8

    move-object v0, v9

    :goto_2
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_2

    :cond_1
    move-object v0, v9

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 13
    .param p1    # Landroid/database/Cursor;

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    iget-boolean v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    if-eqz v9, :cond_2

    const/16 v9, -0x2710

    :goto_0
    invoke-virtual {v10, v11, v9}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    iget-boolean v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    if-eqz v9, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_4
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mms"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0xe

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v2, v9, v11

    :cond_5
    :goto_2
    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->formatDate(J)J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-eqz v9, :cond_6

    cmp-long v9, v6, v0

    if-gez v9, :cond_7

    :cond_6
    move-wide v6, v0

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    invoke-direct {v10, v4, v5, v8}, Lcom/android/mms/ui/MessageListAdapter$ArrayData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_8
    const-string v9, "sms"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_2

    :cond_9
    const-string v9, "im"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "date"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_2

    :cond_a
    const-string v9, "ft"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "date"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_2
.end method

.method public changeFontSizeIndex(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mFontSizeIndex:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mFontSizeIndex:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected changeShowingBubbles()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->onContentChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected changeShowingThreads()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->onContentChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanDummyCheckedList()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    return-void
.end method

.method public clearCheckedList()V
    .locals 2

    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public collapse(Landroid/view/View;Z)V
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x14a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/mms/ui/MessageListAdapter$7;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/MessageListAdapter$7;-><init>(Lcom/android/mms/ui/MessageListAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x7f020367

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public expand(Landroid/view/View;Z)V
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x14a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/mms/ui/MessageListAdapter$6;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/MessageListAdapter$6;-><init>(Lcom/android/mms/ui/MessageListAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x7f020365

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getAnimationIndex()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimationIdx:I

    return v0
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;Z)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Landroid/database/Cursor;
    .param p5    # Z

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    const-string v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageSearchItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    move-object v10, v0

    :goto_0
    if-nez v10, :cond_3

    if-eqz p4, :cond_3

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p5, :cond_2

    :try_start_1
    const-string v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageSearchItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    move-object v10, v0

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception v8

    :goto_2
    const-string v1, "Mms/MessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedMessageItem() : MmsException caught e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v9

    move-object v0, v10

    :goto_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v1, "Mms/MessageListAdapter"

    const-string v2, "OutOfMemoryError caught @ mMessageItemCache.put and throw"

    invoke-static {v1, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :catch_2
    move-exception v9

    move-object v0, v10

    :goto_4
    const-string v1, "Mms/MessageListAdapter"

    const-string v2, "getCachedMessageItem() : CursorWindowAllocationException caught"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_4

    :catch_4
    move-exception v9

    goto :goto_3

    :catch_5
    move-exception v8

    move-object v0, v10

    goto :goto_2

    :cond_3
    move-object v0, v10

    goto :goto_1

    :cond_4
    move-object v10, v0

    goto/16 :goto_0
.end method

.method public getCheckedConvList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getCheckedCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectionPosition()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView() IllegalStateException mDataValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " convertView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-super {p0, v1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Mms/MessageListAdapter"

    const-string v2, "getView() IllegalStateException return null view cause mDataValid is false"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCheckedListContainsNonSMS()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckedMessageId(JLjava/lang/String;I)Z
    .locals 3
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # I

    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-ltz p4, :cond_2

    const-string v1, "im"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    if-ltz p4, :cond_3

    const-string v1, "ft"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public msgListItemMmsOnly()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    const-string v3, "Mms/MessageListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgListItemMmsOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mAdapterSearchMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040098

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->getCacheView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006a

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .param p1    # Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageSearchItemCache:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageSearchItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    :cond_2
    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "MessageListAdapter.onContentChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v2, -0x1

    add-int v1, p2, p3

    add-int/lit8 v0, v1, -0x1

    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    if-eq v1, v2, :cond_0

    if-ne p3, p4, :cond_1

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    if-gt p2, v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    if-gt v1, v0, :cond_0

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    return-void
.end method

.method public refreshChecked(JLjava/lang/String;I)V
    .locals 3
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # I

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ltz p4, :cond_3

    const-string v1, "im"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ltz p4, :cond_4

    const-string v1, "ft"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "mms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageSearchItemCache:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageSearchItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1
    return-void
.end method

.method public resetAnimationIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimationIdx:I

    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setAnimationIndex(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimationIdx:I

    return-void
.end method

.method public setBubbleInfo(JLjava/lang/String;)V
    .locals 0
    .param p1    # J
    .param p3    # Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleIdx:J

    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mBubbleTitle:Ljava/lang/String;

    return-void
.end method

.method public setChecked(JLjava/lang/String;I)V
    .locals 3
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # I

    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ltz p4, :cond_4

    const-string v1, "im"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ltz p4, :cond_5

    const-string v1, "ft"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCombineAndForwardMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCombAndForwMode:Z

    return-void
.end method

.method public setCopyToSimMode(Z)V
    .locals 1
    .param p1    # Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setFlickAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mFlickAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mFlickAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/ui/MessageListAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListAdapter$5;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setForceSelectPosition(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    const-string v0, "Mms/MessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceSelectPosition,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    return-void
.end method

.method public setIsMultiMode(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiMode:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSearchString:Ljava/lang/String;

    return-void
.end method

.method public setThreadInfo(JLjava/lang/String;)V
    .locals 0
    .param p1    # J
    .param p3    # Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadIdx:J

    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadTitle:Ljava/lang/String;

    return-void
.end method

.method public setWorkingMessageUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;Z)V

    return-void
.end method

.method public setWorkingMessageUri(Landroid/net/Uri;Z)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Z

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    :cond_0
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;I)Z
    .locals 4
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # I

    const/4 v1, 0x0

    const-string v2, "sms"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "wpm"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-ltz p4, :cond_5

    const-string v2, "im"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImChatList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-ltz p4, :cond_7

    const-string v2, "ft"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$ImData;-><init>(JLjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedImFtList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
