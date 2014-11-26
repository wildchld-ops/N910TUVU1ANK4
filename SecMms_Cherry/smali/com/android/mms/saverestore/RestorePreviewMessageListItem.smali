.class public Lcom/android/mms/saverestore/RestorePreviewMessageListItem;
.super Landroid/widget/LinearLayout;
.source "RestorePreviewMessageListItem.java"


# static fields
.field private static final BUBBLE_DATE_FONT_SIZE:F = 16.0f

.field public static final BUBBLE_MIN_HEIGHT_DP:I = 0x2f

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x3e8

.field public static final MSG_LIST_ACTION_VIEW:I = 0x4

.field public static final MSG_LIST_ADD_TO_BOOKMARK:I = 0x5

.field public static final MSG_LIST_ADD_TO_CONTACT:I = 0x9

.field public static final MSG_LIST_CALL:I = 0xb

.field public static final MSG_LIST_COPY_MESSAGE_TEXT:I = 0x8

.field public static final MSG_LIST_EDIT_MMS:I = 0x1

.field public static final MSG_LIST_EDIT_SMS:I = 0x2

.field public static final MSG_LIST_OPEN_BROWSER:I = 0x3

.field public static final MSG_LIST_SEND_MESSAGE:I = 0x7

.field public static final MSG_LIST_URL_ADD_TO_CONTACT:I = 0x6

.field public static final MSG_LIST_VIEW_CONTACT:I = 0xa

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field public static final SMS_PRIORITY_HIGH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/RestorePreviewMessageListItem"

.field private static final TAP_TIMEOUT:I

.field public static gListview:Lcom/android/mms/ui/MessageListView;

.field public static final mInboxBGStyle:[I

.field private static final mReceivedBubbleStyle:[I

.field private static final mReservedBubbleStyle:[I

.field public static final mReservedboxBGStyle:[I

.field private static final mSentBubbleStyle:[I

.field public static final mSentFailBGStyle:[I

.field private static final mSentFailBubbleStyle:[I

.field public static final mSentboxBGStyle:[I


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field private mAddressTextView:Landroid/widget/TextView;

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAudioInfoView:Landroid/widget/TextView;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mAvatarViewMe:Landroid/widget/QuickContactBadge;

.field private mBodyTopMargin:I

.field private mBottomBodyTextView:Landroid/widget/TextView;

.field private mBubbleInnerMargin:I

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSeperator:Landroid/widget/TextView;

.field private mDateSeperatorContainer:Landroid/widget/LinearLayout;

.field protected mDateView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mDownloding:Z

.field private mFailedIcon:Landroid/widget/Button;

.field protected mGroupView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAlignLeft:Z

.field private mIsSearchMsgItem:Z

.field private mLeftDateAndIcons:Landroid/widget/LinearLayout;

.field private mLinkedContextMenu:Landroid/app/AlertDialog;

.field private mListInnerMargin:I

.field private mListOuterMargin:I

.field private mLocationTextView:Landroid/widget/TextView;

.field protected mLockView:Landroid/widget/ImageView;

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/android/mms/saverestore/SavedSmsMessage;

.field protected mMmsAttachmentInfoView:Landroid/widget/TextView;

.field protected mMmsIndicatorView:Landroid/widget/TextView;

.field private mMmsView:Landroid/view/View;

.field private mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemContents:Landroid/widget/LinearLayout;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListViewLayout:Landroid/widget/LinearLayout;

.field private mOldFontSize:F

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mRightDateAndIcons:Landroid/widget/LinearLayout;

.field private mScheduledIcon:Landroid/widget/Button;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field private mSendNowLocked:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mTopBodyTextView:Landroid/widget/TextView;

.field private mVideoPlayButton:Landroid/widget/ImageView;

.field private onAvatarClick:Landroid/view/View$OnClickListener;

.field private onAvatarMeClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSentboxBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mReservedboxBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSentFailBGStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mReceivedBubbleStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSentBubbleStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mReservedBubbleStyle:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSentFailBubbleStyle:[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->TAP_TIMEOUT:I

    return-void

    :array_0
    .array-data 4
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015b
        0x7f02015c
        0x7f020159
    .end array-data

    :array_1
    .array-data 4
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f02014e
    .end array-data

    :array_2
    .array-data 4
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020144
    .end array-data

    :array_3
    .array-data 4
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f02014e
    .end array-data

    :array_4
    .array-data 4
        0x7f0201d5
        0x7f0201d8
        0x7f0201db
        0x7f0201de
        0x7f0201e1
        0x7f0201d5
    .end array-data

    :array_5
    .array-data 4
        0x7f0201e4
        0x7f0201e7
        0x7f0201ea
        0x7f0201ed
        0x7f0201f0
        0x7f0201e4
    .end array-data

    :array_6
    .array-data 4
        0x7f0201c4
        0x7f0201c7
        0x7f0201ca
        0x7f0201cd
        0x7f0201d0
        0x7f0201c4
    .end array-data

    :array_7
    .array-data 4
        0x7f0201c4
        0x7f0201c7
        0x7f0201ca
        0x7f0201cd
        0x7f0201d0
        0x7f0201c4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41600000

    iput v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    iput-boolean v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    iput-boolean v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsSearchMsgItem:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOldFontSize:F

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowSize:J

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowLocked:Z

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBodyTopMargin:I

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->onAvatarClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$2;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$2;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->onAvatarMeClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$4;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$6;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41600000

    iput v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    iput-boolean v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    iput-boolean v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsSearchMsgItem:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOldFontSize:F

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowSize:J

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSendNowLocked:Z

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBodyTopMargin:I

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->onAvatarClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$2;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$2;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->onAvatarMeClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$4;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$6;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Lcom/android/mms/saverestore/SavedSmsMessage;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMessageItem:Lcom/android/mms/saverestore/SavedSmsMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/saverestore/SavedSmsMessage;Landroid/content/Context;)V
    .locals 12
    .param p1    # Lcom/android/mms/saverestore/SavedSmsMessage;
    .param p2    # Landroid/content/Context;

    const/4 v8, 0x6

    const/4 v11, 0x5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v10, 0x8

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v1

    if-eq v1, v11, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v8, :cond_4

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v8, :cond_5

    move v6, v4

    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v11, :cond_6

    move v7, v4

    :goto_2
    const-string v5, "sms"

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->formatMessage(Lcom/android/mms/saverestore/SavedSmsMessage;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->setBodyTextViewColor(Z)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getLocked()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getDate()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v2

    if-ne v2, v11, :cond_8

    move v2, v4

    :goto_4
    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    if-ne v8, v4, :cond_9

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->hideMmsViewIfNeeded()V

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/saverestore/SavedSmsMessage;)V

    return-void

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    move v6, v0

    goto :goto_1

    :cond_6
    move v7, v0

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_4

    :cond_9
    move v4, v0

    goto :goto_5
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/saverestore/SavedSmsMessage;)V
    .locals 5
    .param p1    # Lcom/android/mms/saverestore/SavedSmsMessage;

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    if-eqz v4, :cond_3

    :goto_3
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, p1, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->setMessageBubbleStyle(Lcom/android/mms/saverestore/SavedSmsMessage;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # J

    const-string v1, ""

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const-string v0, "E, dd/MM/yyyy"

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleUsingDateTimeOrder()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MDY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "MM/dd/yyyy(E)"

    :cond_0
    :goto_0
    invoke-static {v0, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v3, "YMD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "yyyy/MM/dd(E)"

    goto :goto_0

    :cond_2
    const-string v0, "dd/MM/yyyy(E)"

    goto :goto_0

    :cond_3
    const-string v3, "MDY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "E, MM/dd/yyyy"

    goto :goto_0

    :cond_4
    const-string v3, "YMD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "E, yyyy/MM/dd"

    goto :goto_0
.end method

.method private formatMessage(Lcom/android/mms/saverestore/SavedSmsMessage;)Ljava/lang/CharSequence;
    .locals 11
    .param p1    # Lcom/android/mms/saverestore/SavedSmsMessage;

    const/16 v10, 0x21

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v8

    if-le v7, v8, :cond_1

    const/4 v7, 0x0

    const/16 v8, 0xa0

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    const v9, 0x7f0c013e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int v3, v5, v7

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v7, v5, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v7, v8}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v1, v7, v5, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v4, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private getSmsPageCount(Ljava/lang/String;I)I
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-static {p1, v3, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    :cond_4
    array-length v2, v0

    if-eqz v2, :cond_1

    aget v1, v0, v3

    goto :goto_1
.end method

.method private hideMmsViewIfNeeded()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateDownloadControls()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0b0234

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0295

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v0, 0x7f0b0298

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    return-void
.end method

.method private inflateMmsView()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0299

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    const v0, 0x7f0b0193

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b029c

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLocationTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0b0265

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method private isMultiSelectMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private reCreateTextBottomView()V
    .locals 7

    const-string v5, "Mms/RestorePreviewMessageListItem"

    const-string v6, "reCreateTextBottomView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f0b026c

    invoke-virtual {p0, v5}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f04006e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setBodyTextViewColor(Z)V
    .locals 4
    .param p1    # Z

    const v3, 0x7f09000d

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_0

    const v0, -0xd7d7d8

    :cond_0
    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method

.method private setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z
    .param p5    # Ljava/lang/String;
    .param p6    # Z

    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    const-string v2, "Mms/RestorePreviewMessageListItem"

    const-string v4, "Inside setDateViewTextAndColor failed case"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v4, 0x7f0c0137

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMMSStatusUIForCHN()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    const-string v3, "mms"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p6, :cond_6

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    const-string v5, "mms"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v4, 0x7f0c009d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMessageBubbleStyle(Lcom/android/mms/saverestore/SavedSmsMessage;I)V
    .locals 3
    .param p1    # Lcom/android/mms/saverestore/SavedSmsMessage;
    .param p2    # I

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    aget v0, v2, v1

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void

    :pswitch_1
    sget-object v2, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSentboxBGStyle:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSentFailBGStyle:[I

    aget v0, v2, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const v8, 0x7f0c01a6

    const v7, 0x7f0c004b

    const v6, 0x7f0c004a

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c042b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    const v5, 0x7f04007e

    const v6, 0x7f0b02ce

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v4, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;-><init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v3, "tel:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rtsp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private smsGetPage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p1, v2

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/saverestore/SavedSmsMessage;Landroid/content/Context;Z)V
    .locals 11
    .param p1    # Lcom/android/mms/saverestore/SavedSmsMessage;
    .param p2    # Landroid/content/Context;
    .param p3    # Z

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMessageItem:Lcom/android/mms/saverestore/SavedSmsMessage;

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v3

    iget v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOldFontSize:F

    cmpl-float v8, v8, v3

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->reCreateTextBottomView()V

    :cond_0
    iput v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOldFontSize:F

    if-eqz p3, :cond_7

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getDate()J

    move-result-wide v9

    invoke-direct {p0, p2, v9, v10}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v8, :cond_1

    const v8, 0x7f0b0269

    invoke-virtual {p0, v8}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    const v9, 0x7f0b020f

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    :cond_1
    iget-object v7, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0b0210

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const v8, 0x7f0b020a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f0b0208

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    :cond_2
    :goto_2
    const v8, 0x7f0b0267

    invoke-virtual {p0, v8}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    const v8, 0x7f0b0268

    invoke-virtual {p0, v8}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_3

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->setLongClickable(Z)V

    iget-object v9, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_d

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41800000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    const-string v8, "CBmessages"

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_13

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "Mms/RestorePreviewMessageListItem"

    const-string v9, "Contact avatar display"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_5
    :goto_6
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0202b3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8, v1}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_7
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBodyTopMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    iget v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_8
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->bindCommonMessage(Lcom/android/mms/saverestore/SavedSmsMessage;Landroid/content/Context;)V

    return-void

    :cond_7
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v8, :cond_9

    const v8, 0x7f0b026a

    invoke-virtual {p0, v8}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/16 v9, 0x53

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_9
    iget-object v7, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_b

    const v8, 0x7f0b020d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    :cond_b
    const v8, 0x7f0b020b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_d
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    :cond_e
    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "Mms/RestorePreviewMessageListItem"

    const-string v9, "Contact default avatar display"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string v5, ""

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    :cond_10
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_12
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_6

    :cond_13
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_7

    :cond_14
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    sget-object v8, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->getAvataMe(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_9
    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0202b3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8, v1}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_15
    sget-object v1, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    :cond_16
    iget v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListOuterMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_8
.end method

.method protected findDateAndIconsView()V
    .locals 1

    const v0, 0x7f0b0210

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f0b0267

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    const v0, 0x7f0b021a

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    const v0, 0x7f0b0218

    invoke-virtual {p0, v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public isAlignLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloding:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0b0217

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    const v1, 0x7f0b0221

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0224

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0227

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0228

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0229

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0262

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    const v1, 0x7f0b026b

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const v1, 0x7f0b022b

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0263

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const v1, 0x7f0b026c

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0b0094

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v1, 0x7f0b0266

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v1

    iput v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mOldFontSize:F

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findDateAndIconsView()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c041a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0225

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0b025d

    invoke-virtual {p0, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->onAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->onAvatarMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v4}, Landroid/widget/QuickContactBadge;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListInnerMargin:I

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mListOuterMargin:I

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBubbleInnerMargin:I

    invoke-virtual {p0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mBodyTopMargin:I

    return-void
.end method

.method public onMessageListItemClick()V
    .locals 2

    const-string v0, "Mms/RestorePreviewMessageListItem"

    const-string v1, "onMessageListItemClick called !!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/MessageListView;

    sput-object p1, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;

    return-void
.end method
