.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$SendNowListener;,
        Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;,
        Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;,
        Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;,
        Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;,
        Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;,
        Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;,
        Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;,
        Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;
    }
.end annotation


# static fields
.field private static final BG_DATE_BAR:[I

.field public static final BG_INBOX:[I

.field private static final BG_INBOX_FOCUS:[I

.field private static final BG_INBOX_FOCUS_PRESS:[I

.field public static final BG_SENT:[I

.field public static final BG_SENTFAILED:[I

.field private static final BG_SENTFAILED2:[I

.field private static final BG_SENTFAILED_FOCUS:[I

.field private static final BG_SENTFAILED_FOCUS_PRESS:[I

.field private static final BG_SENT_FOCUS:[I

.field private static final BG_SENT_FOCUS_PRESS:[I

.field private static final BUBBLE_LIST_STYLE:I = 0x1

.field public static final BUBBLE_MIN_HEIGHT_PX:I

.field public static final BUBBLE_TEXT_PER_PAGE:I = 0x8c

.field private static final CHAR_TEXTVIEW_NEW_LINE:C = '\n'

.field private static final COLOR_DATE_SEPERATOR:[I

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x3e8

.field public static final MSG_INDICATE_DELAYED:I = 0x2

.field public static final MSG_INDICATE_DRAFT:I = 0x3

.field public static final MSG_INDICATE_FAILED:I = 0x0

.field public static final MSG_INDICATE_FREEMSG_FAILED:I = 0x5

.field public static final MSG_INDICATE_FT_CANCELED:I = 0x6

.field public static final MSG_INDICATE_NONE:I = -0x1

.field public static final MSG_INDICATE_RCS_FAILED:I = 0x7

.field public static final MSG_INDICATE_SCHEDULED:I = 0x1

.field public static final MSG_INDICATE_TRANSLATE:I = 0x4

.field public static final MSG_LIST_CLICK_LINK:I = 0x3

.field public static final MSG_LIST_DELETE_DRAFT_MMS:I = 0xe

.field public static final MSG_LIST_DELETE_DRAFT_SMS:I = 0xf

.field public static final MSG_LIST_EDIT_DRAFT_MMS:I = 0xc

.field public static final MSG_LIST_EDIT_DRAFT_SMS:I = 0xd

.field public static final MSG_LIST_EDIT_MMS:I = 0x1

.field public static final MSG_LIST_EDIT_SMS:I = 0x2

.field private static final SEARCH_BUBBLE_LIST_STYLE:I = 0x0

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field public static final SMS_PRIORITY_HIGH:I = 0x2

.field private static final SUPPORT_PLAY_STICKER:Z = true

.field private static final TAG:Ljava/lang/String; = "Mms/MessageListItem"

.field private static final TAP_TIMEOUT:I

.field private static final TEXT_COLOR_FAILED:I = -0xcdcdce

.field private static isAnimationPlaying:Z

.field private static lastFailedMsgIdAnimationPlayed:J

.field public static mBubbleClicked:Z

.field private static sTextColorLink:I

.field private static sTextColorNormal:I


# instance fields
.field private DEBUG_ONLY:Z

.field private mActiveMoreButton:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mAddressTextView:Landroid/widget/TextView;

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mAvatarViewMe:Landroid/widget/QuickContactBadge;

.field private mBodyBottomMargin:I

.field private mBodyIconView:Landroid/widget/ImageView;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBodyTopMargin:I

.field private mBubbleIconContainer:Landroid/widget/LinearLayout;

.field private mBubbleInnerMargin:I

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSeperator:Landroid/widget/TextView;

.field private mDateSeperatorContainer:Landroid/widget/LinearLayout;

.field private mDateView:Landroid/widget/TextView;

.field private final mDelayedIconClickListener:Landroid/view/View$OnClickListener;

.field private final mDeliveryCountClickListener:Landroid/view/View$OnClickListener;

.field private mDeliveryReportIcon:Landroid/widget/ImageView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingContainer:Landroid/widget/LinearLayout;

.field private mDownloadingTextView:Landroid/widget/TextView;

.field private mDownloding:Z

.field private final mDraftedIconClickListener:Landroid/view/View$OnClickListener;

.field private final mFailedIconClickListener:Landroid/view/View$OnClickListener;

.field private mFreeMessageBubbleGroup:Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

.field private mFreeMessageFtContainer:Landroid/widget/LinearLayout;

.field private mFreeMessageProgressLayout:Landroid/widget/LinearLayout;

.field private mFreeMessageProgressTotalprogress:Landroid/widget/TextView;

.field private mFreeMessageProgressTransfersize:Landroid/widget/TextView;

.field private mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

.field private mFreeSystemMessageTextView:Landroid/widget/TextView;

.field private mFtButtonLinear:Landroid/widget/LinearLayout;

.field private mFtCancel:Landroid/widget/Button;

.field private final mFtCancelClickListener:Landroid/view/View$OnClickListener;

.field private mFtCancelRejectButton:Landroid/widget/Button;

.field private final mFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

.field private mFtDownloadButton:Landroid/widget/Button;

.field private final mFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

.field private mFtPause:Landroid/widget/Button;

.field private final mFtPauseButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mFtProgressBar:Landroid/widget/ProgressBar;

.field private mFtResume:Landroid/widget/Button;

.field private final mFtResumeButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mFtSendClickListener:Landroid/view/View$OnClickListener;

.field private mFtdontaskButton:Landroid/widget/Button;

.field private mFtlLinear:Landroid/widget/LinearLayout;

.field protected mGroupView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIndicateMode:I

.field protected mIndicatorContainer:Landroid/view/View;

.field private mIndicatorIcon:Landroid/widget/Button;

.field protected mIndicatorLockMsg:Landroid/widget/ImageView;

.field protected mIndicatorTextView:Landroid/widget/TextView;

.field private mIsAlignLeft:Z

.field private mIsEnableTranslator:Z

.field private mIsLongclickHandled:Z

.field public mItemSearchBubbleTitle:Z

.field public mItemSearchMode:Z

.field public mItemSearchThreadTitle:Z

.field private mLastThreadIndex:J

.field private mLeftLine:Landroid/widget/ImageView;

.field private mListDivider:Landroid/view/View;

.field private mListInnerMargin:I

.field private mListOuterMargin:I

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

.field private mMmsSlideContainer:Landroid/widget/LinearLayout;

.field private mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

.field private mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

.field protected mMsgIndicatorTextView:Landroid/widget/TextView;

.field private mMsgListItemContents:Landroid/widget/LinearLayout;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private mMsgListItemRootLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListViewLayout:Landroid/widget/LinearLayout;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnBodyTextTouchListenerDA:Landroid/view/View$OnTouchListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mOnSearchListClickListener:Landroid/view/View$OnClickListener;

.field private mPriorityIndicator:Landroid/widget/ImageView;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mRcsBubbleGroup:Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

.field private mRcsDeliveryButton:Landroid/widget/Button;

.field private final mRcsDeliveryCountClickListener:Landroid/view/View$OnClickListener;

.field private mRcsDeliveryIcon:Landroid/widget/ImageView;

.field private final mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

.field private mRcsFailedIconInbox:Landroid/widget/Button;

.field private mRcsFtCancel:Landroid/widget/Button;

.field private final mRcsFtCancelClickListener:Landroid/view/View$OnClickListener;

.field private mRcsFtCancelRejectButton:Landroid/widget/Button;

.field private final mRcsFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

.field private mRcsFtContainer:Landroid/widget/LinearLayout;

.field private final mRcsFtDontAskButtonClickListener:Landroid/view/View$OnClickListener;

.field private mRcsFtDownloadButton:Landroid/widget/Button;

.field private final mRcsFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mRcsFtProgressBar:Landroid/widget/ProgressBar;

.field private mRcsFtSend:Landroid/widget/Button;

.field private final mRcsFtSendClickListener:Landroid/view/View$OnClickListener;

.field private mRcsFtdontaskButton:Landroid/widget/Button;

.field private mRcsFtlLinear:Landroid/widget/LinearLayout;

.field private mRcsGCUnreadCount:Landroid/widget/TextView;

.field private final mRcsResumingIconClickListener:Landroid/view/View$OnClickListener;

.field private mRcsSystemMessageContainer:Landroid/widget/LinearLayout;

.field private mRcsSystemMessageTextView:Landroid/widget/TextView;

.field private mReadReportIcon:Landroid/widget/ImageView;

.field private mReadStausTextView:Landroid/widget/TextView;

.field private final mResumingIconClickListener:Landroid/view/View$OnClickListener;

.field private mRightLine:Landroid/widget/ImageView;

.field protected mSIMView:Landroid/widget/ImageView;

.field protected mSafeMMSLogo:Landroid/widget/ImageView;

.field private final mScheduledIconClickListener:Landroid/view/View$OnClickListener;

.field public mSearchString:Ljava/lang/String;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field private mSendNowConfirmDialog:Landroid/app/AlertDialog;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSendSimSlot:I

.field private mSenderInfo:Landroid/widget/TextView;

.field private mSentTimeStamp:Ljava/lang/String;

.field private mStickerUri:Landroid/net/Uri;

.field private mStickerView:Landroid/widget/ImageView;

.field private mSubjectContentSeperator:Landroid/view/View;

.field private mSubjectTextView:Landroid/widget/TextView;

.field private mThreadAddress:Landroid/widget/TextView;

.field private mThreadAvatarView:Landroid/widget/QuickContactBadge;

.field private mThreadLayout:Landroid/widget/LinearLayout;

.field private mThreadSnippet:Landroid/widget/TextView;

.field private mTranslateIcon:Landroid/widget/Button;

.field private final mTranslateIconClickListener:Landroid/view/View$OnClickListener;

.field private mTruncateLongMessages:Z

.field protected mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

.field private mVattachmentClickListener:Landroid/view/View$OnClickListener;

.field private onAvataClick:Landroid/view/View$OnClickListener;

.field private onAvataMeClick:Landroid/view/View$OnClickListener;

.field private sessionID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x6

    sput-boolean v3, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS_PRESS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_DATE_BAR:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->COLOR_DATE_SEPERATOR:[I

    const/high16 v0, 0x422c0000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->BUBBLE_MIN_HEIGHT_PX:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    sput-boolean v3, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    sput v2, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    sput v2, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020144
    .end array-data

    :array_1
    .array-data 4
        0x7f0201d5
        0x7f0201d8
        0x7f0201db
        0x7f0201de
        0x7f0201e1
        0x7f0201d5
    .end array-data

    :array_2
    .array-data 4
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f02013f
    .end array-data

    :array_3
    .array-data 4
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015b
        0x7f02015c
        0x7f020159
    .end array-data

    :array_4
    .array-data 4
        0x7f0201e4
        0x7f0201e7
        0x7f0201ea
        0x7f0201ed
        0x7f0201f0
        0x7f0201e4
    .end array-data

    :array_5
    .array-data 4
        0x7f020153
        0x7f020154
        0x7f020155
        0x7f020156
        0x7f020157
        0x7f020153
    .end array-data

    :array_6
    .array-data 4
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f02014e
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

    :array_8
    .array-data 4
        0x7f020149
        0x7f02014a
        0x7f02014b
        0x7f02014c
        0x7f02014d
        0x7f020149
    .end array-data

    :array_9
    .array-data 4
        0x7f0201c3
        0x7f0201c6
        0x7f0201c9
        0x7f0201cc
        0x7f0201cf
    .end array-data

    :array_a
    .array-data 4
        0x7f020091
        0x7f020091
        0x7f020091
        0x7f020092
        0x7f020093
        0x7f020091
    .end array-data

    :array_b
    .array-data 4
        0x7f090012
        0x7f090012
        0x7f090012
        0x7f090012
        0x7f090013
        0x7f090014
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchThreadTitle:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchBubbleTitle:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mLastThreadIndex:J

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->sessionID:Ljava/lang/String;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDelayedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtSendClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$19;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResumingIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$20;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$21;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$22;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtPauseButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$23;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtResumeButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$24;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$24;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$25;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$25;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryCountClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$26;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSendClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$27;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$27;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsResumingIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$28;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$29;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$29;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDontAskButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$30;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$31;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$32;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryCountClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$35;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$35;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$36;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$36;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->initComposerVariable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchThreadTitle:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchBubbleTitle:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mLastThreadIndex:J

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->sessionID:Ljava/lang/String;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDelayedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtSendClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$19;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResumingIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$20;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$21;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$22;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtPauseButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$23;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtResumeButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$24;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$24;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$25;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$25;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryCountClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$26;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSendClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$27;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$27;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsResumingIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$28;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$29;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$29;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDontAskButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$30;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$31;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$32;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryCountClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$35;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$35;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$36;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$36;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->initComposerVariable()V

    return-void
.end method

.method private UpdateRcsTransferProgress(Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsFtTransfSize()I

    move-result v5

    int-to-long v0, v5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsFtTotalSize()I

    move-result v5

    int-to-long v2, v5

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtlLinear:Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v5, 0x64

    mul-long/2addr v5, v0

    div-long/2addr v5, v2

    long-to-int v4, v5

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private UpdateTransferProgress(Lcom/android/mms/ui/MessageItem;)V
    .locals 14
    .param p1    # Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFtTransfSize()I

    move-result v7

    int-to-long v0, v7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFtTotalSize()I

    move-result v7

    int-to-long v2, v7

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mFtlLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v7, 0x64

    mul-long/2addr v7, v0

    div-long/2addr v7, v2

    long-to-int v6, v7

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mFtProgressBar:Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mFtProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3ff

    add-long/2addr v10, v0

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3ff

    add-long/2addr v10, v2

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageProgressTransfersize:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x25

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageProgressTotalprogress:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageProgressLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/QuickContactBadge;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/QuickContactBadge;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Z
    .param p3    # Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsLongclickHandled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mIsLongclickHandled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MessageListItem;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Landroid/text/Spannable;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MessageListItem;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2500()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->isUndeliveredMsg(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/MessageListItem;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/MessageListItem;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/mms/ui/MessageListItem;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/mms/ui/MessageListItem;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/MessageListItem;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/mms/ui/MessageListItem;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->sessionID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->deleteDraftMessage()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;
    .param p1    # Lcom/android/mms/ui/MessageItem;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->rcsStartFTSend()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtlLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->rcsGroupChatSendStatus()V

    return-void
.end method

.method private static appendMoreText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/text/SpannableStringBuilder;

    const/16 v6, 0x21

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c013e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v2, v4

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x205000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static applyBodyTextViewColor(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
    .param p1    # Z

    if-eqz p1, :cond_0

    const v0, -0xcdcdce

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->getLinkTextColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->getNormalTextColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isStickerEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v5

    const/16 v6, 0x69

    if-lt v5, v6, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mStickerUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mStickerUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "Mms/MessageListItem"

    const-string v4, "Same Sticker!!!!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mStickerUri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v5, v4, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/android/mms/poi/PoiReflector;->extractPoiString(Landroid/app/Activity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v5

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_a

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v5

    const/16 v6, 0x68

    if-gt v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    const v6, 0x7f020056

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    invoke-static {v5, v3}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_1

    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private bindCmasSmsAddressTextView(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->formatCmasSmsAddress(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x8

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->bindCmasSmsAddressTextView(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindVAttachmentList(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/android/mms/ui/MessageListItem;->getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I

    move-result v0

    const/16 v4, 0x82

    if-ne v0, v4, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->checkLongText(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->truncateLongMessagePref:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    const v3, 0x7f0c013e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFreeMessageFtView()V

    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-eq v0, v1, :cond_13

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_6
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p0}, Lcom/android/mms/ui/MessageListItem;->presentFreeMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideRcsFtView()V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p0}, Lcom/android/mms/ui/MessageListItem;->presentRcs(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v0

    invoke-direct {p0, p1, v0, p0}, Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFreeMessageFtView()V

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideRcsFtView()V

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideFreeMessageFtView()V

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideRcsFtView()V

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_15
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-eq v0, v1, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_16
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_18
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_19
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private bindDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z
    .param p5    # Ljava/lang/String;
    .param p6    # Z
    .param p7    # Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_1
    if-nez p7, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private bindDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z
    .param p5    # Ljava/lang/String;
    .param p6    # Z
    .param p7    # Z
    .param p8    # Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    if-nez p8, :cond_0

    :cond_2
    if-nez p7, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private bindIndicator(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 19
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v15, ""

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0488

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->isUndeliveredMsg(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamingTimeSchemeForCHN()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v2, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatTimeForLocal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    :cond_0
    if-eqz p2, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x3

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, " "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_5

    const-string v2, " "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isQueuedMessage()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    :goto_5
    invoke-static {v3, v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c009d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isQueuedMessage()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-static {v3, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_8
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_a
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v11, ""

    goto/16 :goto_1

    :cond_c
    const-string v14, ""

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_10
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    :goto_a
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x5

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v10, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0538

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_19
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_1a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_b
    invoke-static {v6, v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    :goto_c
    invoke-static {v3, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_6

    :cond_1d
    const/4 v2, 0x0

    goto :goto_b

    :cond_1e
    const/4 v2, 0x0

    goto :goto_c

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsOutgoingMessage()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_20

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v17, 0x2

    cmp-long v2, v6, v17

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_d
    invoke-static {v3, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_6

    :cond_20
    const/4 v2, 0x0

    goto :goto_d

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    :goto_e
    invoke-static {v3, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_6

    :cond_22
    const/4 v2, 0x0

    goto :goto_e

    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x1

    :goto_f
    invoke-static {v3, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_8

    :cond_25
    const/4 v2, 0x0

    goto :goto_f

    :cond_26
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->updateUnreadCount(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_9

    :cond_29
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_9

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2b

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_2c

    :cond_2b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MessageListItem;->FtButtonSetVisible(ZZZZZ)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_2c
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x2

    cmp-long v2, v2, v6

    if-nez v2, :cond_2e

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mFreeMsgFtCancelReason:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_10
    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator FreeMessageFTDeliveryStatus.IN_PROGRESS "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->UpdateTransferProgress(Lcom/android/mms/ui/MessageItem;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MessageListItem;->FtButtonSetVisible(ZZZZZ)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_10

    :cond_2e
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x3

    cmp-long v2, v2, v6

    if-nez v2, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->updateUnreadCount(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_9

    :cond_2f
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x4

    cmp-long v2, v2, v6

    if-nez v2, :cond_31

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_30
    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator FreeMessageFTDeliveryStatus.CANCELED "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_31
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x6

    cmp-long v2, v2, v6

    if-nez v2, :cond_33

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mFreeMsgFtCancelReason:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_32
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->UpdateTransferProgress(Lcom/android/mms/ui/MessageItem;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MessageListItem;->FtButtonSetVisible(ZZZZZ)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_33
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x8

    cmp-long v2, v2, v6

    if-nez v2, :cond_34

    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator FreeMessageFTDeliveryStatus.BLOCKED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_34
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x5

    cmp-long v2, v2, v6

    if-nez v2, :cond_36

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mFreeMsgFtCancelReason:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_35
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->UpdateTransferProgress(Lcom/android/mms/ui/MessageItem;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MessageListItem;->FtButtonSetVisible(ZZZZZ)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_36
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_9

    :cond_37
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_38
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_51

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_3d

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_39
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_3a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/MessageListItem;->updateRcsUnreadCount(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_9

    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    :cond_3c
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_9

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mRcsFtContentFilesSize:I

    invoke-static {v2, v3}, Lcom/android/mms/rcs/transaction/Utils;->canBeDownload(Landroid/content/Context;I)I

    move-result v9

    const/4 v2, 0x3

    if-ne v9, v2, :cond_3e

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "status"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.PENDING 4"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rcsdb_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->buildRejectIntent(J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtlLinear:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    :cond_3e
    const/4 v2, 0x2

    if-ne v9, v2, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    goto/16 :goto_9

    :cond_3f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-nez v2, :cond_45

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isInternationalRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAcceptInHome(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAcceptInRoaming(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mRcsFtContentFilesSize:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/android/mms/rcs/Configuration$Ft;->isWarnSizeTresholdExceeded(J)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    :goto_11
    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.Auto Accept Roaming "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_40
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    goto :goto_11

    :cond_41
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.PENDING Roaming"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAcceptInHome(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mRcsFtContentFilesSize:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/android/mms/rcs/Configuration$Ft;->isWarnSizeTresholdExceeded(J)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    :goto_13
    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.Auto Accept home"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_43
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    goto :goto_13

    :cond_44
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.PENDING home"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_45
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x2

    cmp-long v2, v2, v6

    if-nez v2, :cond_46

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->UpdateRcsTransferProgress(Lcom/android/mms/ui/MessageItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.IN_PROGRESS "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_46
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x3

    cmp-long v2, v2, v6

    if-nez v2, :cond_47

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->updateRcsUnreadCount(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_9

    :cond_47
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_48

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0xc

    cmp-long v2, v2, v6

    if-nez v2, :cond_4b

    :cond_48
    const-string v2, "Mms/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindImdicator RcsFTState."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " isInbox = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-nez v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x4

    cmp-long v2, v2, v6

    if-nez v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_49
    :goto_14
    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.CANCELED "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_4a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x4

    cmp-long v2, v2, v6

    if-nez v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14

    :cond_4b
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x6

    cmp-long v2, v2, v6

    if-nez v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->rcsStartFTSend()V

    :goto_15
    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.ATTACHED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_4c
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->UpdateRcsTransferProgress(Lcom/android/mms/ui/MessageItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/mms/ui/MessageListItem;->FtRcsButtonSetVisible(ZZZZ)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_15

    :cond_4d
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x8

    cmp-long v2, v2, v6

    if-nez v2, :cond_4e

    const-string v2, "Mms/MessageListItem"

    const-string v3, "bindImdicator RcsFTState.BLOCKED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_4e
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x5

    cmp-long v2, v2, v6

    if-nez v2, :cond_50

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_4f
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_9

    :cond_50
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_9

    :cond_51
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_9
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    const v10, 0x7f0c0014

    const/4 v5, 0x1

    const/16 v9, 0x8

    const/4 v4, 0x0

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getBubbleFontSizeTiny()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c008c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%d"

    new-array v7, v5, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v8, v8, 0x3ff

    div-int/lit16 v8, v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0011

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3, v4, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    move v3, v5

    :goto_2
    invoke-static {v6, v3}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v3, v9}, Lcom/android/mms/ui/VAttachmentListView;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/android/mms/ui/MessageListItem;->getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I

    move-result v3

    const/16 v7, 0x82

    if-ne v3, v7, :cond_8

    move v3, v5

    :goto_3
    invoke-static {v6, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_3
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v2

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    packed-switch v2, :pswitch_data_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v5, 0x7f020067

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-static {p2}, Lcom/android/mms/ui/MessageListItem;->getNormalTextColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    :cond_4
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    move v3, v4

    goto/16 :goto_2

    :cond_8
    move v3, v4

    goto/16 :goto_3

    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v6, 0x7f0c0013

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v4, 0x7f02023f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0202dd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private bindSenderTextView(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 5
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Z

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSender()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/mms/ui/MessageListItem;->formatSenderInfo(Lcom/android/mms/ui/MessageItem;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedSender(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-boolean v1, p1, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupChatMessage()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsGroupChatMessage()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindSeperators(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->hasVisibleContent()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageBubbleGroup:Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;->hasVisibleContent()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRcsBubbleGroup:Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->hasVisibleContent()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    :cond_3
    move v0, v3

    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/VAttachmentListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    move v2, v3

    :goto_2
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectContentSeperator:Landroid/view/View;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    :goto_3
    invoke-static {v5, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void

    :cond_5
    move v1, v4

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_3
.end method

.method private bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3, v2, v2}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedSubject(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x5

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 4
    .param p1    # I

    const-string v0, "Mms/MessageListItem"

    const-string v1, "changeFontSize"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private checkBubbleStyleAsMode(I)Z
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkLongText(Lcom/android/mms/ui/MessageItem;)Z
    .locals 7
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v6, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    const/4 v3, 0x0

    const-string v4, "sms"

    iget-object v5, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v4, v6, v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->urlIncluded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkLongText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const-string v4, "mms"

    iget-object v5, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private deleteDraftMessage()V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageDeliveryStatus()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageDeliveryStatus()I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getHighlightMsgID()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getHighlightMsgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    :goto_4
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MessageListItem;->bindIndicator(Lcom/android/mms/ui/MessageItem;Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    goto :goto_4
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x0

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private editDraftMessage()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->hasOnlySignatureText()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v1, 0xe

    const-string v2, "Mms/MessageListItem"

    const-string v3, "editDraftMessage() - Abnormal Draft Message Delete!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private findFirstValidSlide(Lcom/android/mms/ui/MessageItem;)I
    .locals 8
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "Mms/MessageListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vSlideModel not null, count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    add-int/lit8 v1, v0, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v5, "Mms/MessageListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstValidSlide="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    goto :goto_0
.end method

.method private formatAddress(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/util/regex/Pattern;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-string v5, "Mms/MessageListItem"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    return-object v4
.end method

.method public static formatBody(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Z
    .param p2    # Landroid/content/Context;
    .param p3    # Lcom/android/mms/util/SmileyParser;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    if-le v3, v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p3, p0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    invoke-static {p2, v0}, Lcom/android/mms/ui/MessageListItem;->appendMoreText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static formatCBNumber(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 2
    .param p0    # Lcom/android/mms/ui/MessageItem;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\nCB#: "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private formatCmasSmsAddress(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v1}, Lcom/android/mms/transaction/CmasReceiverService;->getTmoServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v1}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatContactInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 5
    .param p0    # Lcom/android/mms/ui/MessageItem;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContactInfoInBubble()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v3

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v0
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # J

    const-string v1, ""

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const v3, 0x7f0c0580

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleUsingDateTimeOrder()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MDY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0c057e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    const v3, 0x7f0c057f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v3, 0x7f0c057d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "MDY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0c0581

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v3, "YMD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0c0582

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;
    .locals 11
    .param p0    # Lcom/android/mms/ui/MessageItem;
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Z

    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v0, ""

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/mms/ui/MessageListItem;->formatContactInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0, p1, v10}, Lcom/android/mms/ui/MessageListItem;->formatSubject(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    invoke-static {v0, v1, p1, v10}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageListItem;->formatCBNumber(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-lez v8, :cond_3

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    const-string v5, "Mms/MessageListItem"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    return-object v4
.end method

.method private formatMessage(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/mms/data/ContactList;

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v2, ", "

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "Unknown address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Verizon Global Support"

    goto :goto_0
.end method

.method public static formatSenderInfo(Lcom/android/mms/ui/MessageItem;Z)Ljava/lang/CharSequence;
    .locals 6
    .param p0    # Lcom/android/mms/ui/MessageItem;
    .param p1    # Z

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v3

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz p1, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mUserAlias:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mUserAlias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mUserAlias:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mUserAlias:Ljava/lang/String;

    goto :goto_1
.end method

.method private formatSimpleDate(J)Ljava/lang/String;
    .locals 3
    .param p1    # J

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd E"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSubject(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/util/SmileyParser;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSubjectConcept4Korea()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0015

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private getBackGroundStyleIndex()I
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleBackgroundStyle(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method public static getBytesForDisplayFolding()I
    .locals 1

    const/16 v0, 0x8c

    return v0
.end method

.method private getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLinkTextColor(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;

    const/4 v0, -0x1

    sget v1, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    :cond_0
    sget v0, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    return v0
.end method

.method private getLinkTouchListener()Landroid/view/View$OnTouchListener;
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLinkDAUSA()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListenerDA:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListenerDA:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListenerDA:Landroid/view/View$OnTouchListener;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    goto :goto_0
.end method

.method private static getNormalTextColor(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;

    const/4 v0, -0x1

    sget v1, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    :cond_0
    sget v0, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    return v0
.end method

.method private getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/ui/MessageItem;

    const/16 v0, 0x80

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v0, 0x82

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p2, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    goto :goto_0
.end method

.method private getUniqueFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1    # Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, p1

    const/4 v0, 0x1

    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v6
.end method

.method private hideFreeMessageFtView()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageFtContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageBubbleGroup:Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageBubbleGroup:Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    return-void
.end method

.method private hideMmsView()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    return-void
.end method

.method private hideRcsFtView()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsBubbleGroup:Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsBubbleGroup:Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsBubbleView;

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    return-void
.end method

.method private hideSipExplict()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0b0234

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0295

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v0, 0x7f0b0296

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0298

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRcsUndeliveredMsg(Lcom/android/mms/ui/MessageItem;)Z
    .locals 12
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const-wide/16 v10, 0x3e8

    const/4 v2, 0x0

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mSentTimeMills:J

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRCSDeliveryStatus()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsGroupChatMessage()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/android/mms/rcs/Configuration;->getDeliveryTimeout()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v4, v6, v8

    int-to-long v6, v1

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v6, v2

    goto :goto_0
.end method

.method private isUndeliveredMsg(Lcom/android/mms/ui/MessageItem;)Z
    .locals 12
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const-wide/16 v10, 0x3e8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v2

    :goto_0
    return v6

    :cond_0
    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mSentTimeMills:J

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRCSDeliveryStatus()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupChatMessage()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/rcs/Configuration;->getDeliveryTimeout()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v4, v6, v8

    int-to-long v6, v1

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v6, v2

    goto :goto_0
.end method

.method private isUseCustomBg()Z
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_background_color"

    sget v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->BACKGROUND_STYLE_DEFAULT_VALUE:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BACKGROUND_STYLE_DEFAULT_VALUE:I

    :cond_0
    sget v3, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseSystemMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    const-string v4, ":"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_0

    const-string v4, ";"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseSystemMessage src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " endofItemIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v7, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseSystemMessage sb.toString()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseSystemMessage sb.toString()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    goto/16 :goto_0
.end method

.method private presentFreeMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V
    .locals 4
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageBubbleGroup:Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

    invoke-virtual {v1, v0, p1}, Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;->initFreeMessageThumbnail(ILcom/android/mms/ui/MessageItem;)V

    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageBubbleGroup:Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mFreeMsgFTContentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;->present(Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method

.method private presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    .locals 4
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Z
    .param p3    # Lcom/android/mms/ui/MessageListItem;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->findFirstValidSlide(Lcom/android/mms/ui/MessageItem;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v1, v0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->initMmsThumbnail(ILcom/android/mms/ui/MessageItem;)V

    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    invoke-virtual {v1, p3, v2}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;Z)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_1
.end method

.method private presentRcs(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V
    .locals 4
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsBubbleGroup:Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

    invoke-virtual {v1, v0, p1}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->initRcsThumbnail(ILcom/android/mms/ui/MessageItem;)V

    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsBubbleGroup:Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mRcsFTContentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->present(Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method

.method private rcsGroupChatSendStatus()V
    .locals 12

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsDBId()J

    move-result-wide v4

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const/4 v2, 0x0

    invoke-static {v1, v10, v11, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    new-instance v2, Lcom/android/mms/ui/RecipientListItem;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v10, v1}, Lcom/android/mms/ui/RecipientListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/mms/ui/SendStatusAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f04009b

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SendStatusAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;J)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c050e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00ee

    new-instance v10, Lcom/android/mms/ui/MessageListItem$34;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MessageListItem$34;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v1, v2, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessageListItem$33;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListItem$33;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private rcsSendAllPendingFTs()V
    .locals 15

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "rcsdb_id"

    aput-object v1, v2, v0

    const-string v0, "status"

    aput-object v0, v2, v6

    const-string v3, "status = 1"

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->FT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    :cond_0
    const-string v0, "rcsdb_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->buildAcceptIntent(J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    sget-object v7, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "status=1"

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isLocalOffline()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "status"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    const-string v0, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private rcsStartFTSend()V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsQuery;->getFtBySessionId(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FT Send state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-eq v7, v0, :cond_1

    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message ID : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " state : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is already QUEUED!!!!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isLocalOffline()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "status"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rcsdb_id="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->rcsUploadFile(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private setDefaultMessageListItem()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private setFailedMessageBackgroundDefault()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED2:[I

    aget v0, v2, v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setIndicateMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    return-void
.end method

.method private setIndicatorButton(I)V
    .locals 5
    .param p1    # I

    const v4, 0x7f0c03a3

    const v2, 0x7f02015f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private setIndicatorIconClicklistner(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDelayedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private setIndicatorTextView(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0390

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 7
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # I

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_1

    :cond_8
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 4
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # I

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1    # Landroid/text/Spannable;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p4, p5, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setTextViewMaxWidth(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    :cond_4
    return-void
.end method

.method private startAnimation()V
    .locals 14

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v12, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/16 v3, 0x14e

    const/4 v4, 0x0

    invoke-direct {v12, v2, v3, v13, v4}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;-><init>(Landroid/view/View;III)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2, v12}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v2, 0x1d3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    new-instance v2, Lcom/android/mms/animation/easing/SineInOut33;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40a00000

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xa6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Lcom/android/mms/animation/easing/SineInOut33;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v2, p0, v11, v0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/view/animation/AlphaAnimation;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v12, v2}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v2, p0, v13}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private startViewer()V
    .locals 14

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start viewer, msgid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v3, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_2

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v7, :cond_1

    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mSafeMessage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_2

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "isWapPush"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v7, :cond_5

    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mSafeMessage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_7
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v7, :cond_8

    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    :cond_f
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v7, :cond_10

    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private startYellowPage(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v1, "Mms/MessageListItem"

    const-string v2, "startYellow"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.yellowpage"

    const-string v2, "com.sec.android.yellowpage.YellowPageMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "yellowpage_search_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    return-void
.end method

.method private updateAvatarView(Lcom/android/mms/data/ContactList;ZJLjava/lang/String;)V
    .locals 10
    .param p1    # Lcom/android/mms/data/ContactList;
    .param p2    # Z
    .param p3    # J
    .param p5    # Ljava/lang/String;

    const v9, 0x7f02027d

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v7, :cond_a

    invoke-virtual {p1, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    long-to-int v5, p3

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02027c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, p5}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020287

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02027e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1

    :cond_7
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02027f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static urlIncluded(Ljava/lang/String;)Z
    .locals 6
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlIncluded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlIncluded:links.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public FtButtonSetVisible(ZZZZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z
    .param p5    # Z

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtlLinear:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtButtonLinear:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtPause:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtResume:Landroid/widget/Button;

    invoke-static {v0, p2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancel:Landroid/widget/Button;

    invoke-static {v0, p3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtDownloadButton:Landroid/widget/Button;

    invoke-static {v0, p4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancelRejectButton:Landroid/widget/Button;

    invoke-static {v0, p5}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtdontaskButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public FtRcsButtonSetVisible(ZZZZ)V
    .locals 3
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtlLinear:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancel:Landroid/widget/Button;

    invoke-static {v0, p2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDownloadButton:Landroid/widget/Button;

    invoke-static {v0, p3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelRejectButton:Landroid/widget/Button;

    invoke-static {v0, p4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAccept(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtdontaskButton:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mRcsFtContentFilesSize:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/mms/rcs/Configuration$Ft;->isWarnSizeTresholdExceeded(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtdontaskButton:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtdontaskButton:Landroid/widget/Button;

    invoke-static {v0, p3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 32
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;
    .param p4    # Z

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageListItem;->mIsEnableTranslator:Z

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mHasImSystemMessage:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    if-nez v2, :cond_8

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c055b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v20, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageTextView:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mHasImSystemMessage:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    const/16 v26, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->parseSystemMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsSystemMessageContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getRcsMessageType()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0529

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsSystemMessageTextView:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    const-string v2, "thread"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSearchString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/util/UIUtils;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/mms/ui/MessageListItem;->formatAddress(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->changeFontSize7Step(I)V

    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mRecipientIds:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Lcom/android/mms/data/ContactList;ZJLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_d

    const-string v23, ""

    :goto_5
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->setDefaultMessageListItem()V

    new-instance v2, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c055d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c055e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c055c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c055b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v20, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getRcsMessageType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c052a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getRcsMessageType()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c052b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsSystemMessageContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_c
    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->changeFontSize(I)V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_3a

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v15

    :goto_8
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_3d

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getBackGroundStyleIndex()I

    move-result v31

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalEffectJpn()Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/mms/settings/DisplayStyleActivity;->checkTodayIsFestivalJpn(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Lcom/android/mms/settings/DisplayStyleActivity;->isEnableFestivalEffectJpn(Landroid/content/Context;Landroid/content/ContentResolver;I)Z

    move-result v30

    const/4 v2, 0x5

    move/from16 v0, v31

    if-gt v0, v2, :cond_11

    if-eqz v30, :cond_12

    :cond_11
    const/16 v21, 0x1

    :cond_12
    if-eqz v21, :cond_13

    const/16 v31, 0x0

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isUseCustomBg()Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v21, :cond_3b

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mLeftLine:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/mms/ui/MessageListItem;->BG_DATE_BAR:[I

    aget v4, v4, v31

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRightLine:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/mms/ui/MessageListItem;->BG_DATE_BAR:[I

    aget v4, v4, v31

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/android/mms/ui/MessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/mms/ui/MessageListItem;->formatSimpleDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f0b023a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const v2, 0x7f0b0241

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    :cond_15
    const v2, 0x7f0b023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    const v2, 0x7f0b0244

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplaySimIcon()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f0b0243

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    const v2, 0x7f0b0239

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    :cond_17
    :goto_b
    if-eqz v17, :cond_18

    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    if-eqz v18, :cond_19

    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageFtContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageFtContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setFocusable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mIsEnableTranslator:Z

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_42

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/TranslateManager;->isTranslatableMms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_21
    :goto_d
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_44

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_44

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sput-wide v4, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->startAnimation()V

    :cond_22
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    if-eqz v2, :cond_25

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v4, -0x1

    if-le v2, v4, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_25
    :goto_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_27
    :goto_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isRcsFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicatorButton(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicatorTextView(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    if-eqz v2, :cond_29

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SKT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4a

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mSafeMessage:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_29
    :goto_11
    const/16 v24, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiwindow()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v24

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/VAttachmentListView;->setItemClickable(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtPause:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtResume:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtCancel:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtDownloadButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtCancelRejectButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtdontaskButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2f
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancel:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDownloadButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelRejectButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtdontaskButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_30
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v15}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setBodyTextSize(IF)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->bindSenderTextView(Lcom/android/mms/ui/MessageItem;Z)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_34

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    const-string v2, "CBmessages"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_66

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_66

    :cond_31
    const-string v2, "wpm"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v8, :cond_33

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    if-eqz v12, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v2, "Mms/MessageListItem"

    const-string v4, "Contact avatar display"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02027d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_32
    if-eqz v12, :cond_62

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_62

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_33
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v9}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    :cond_34
    :goto_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6c

    const v2, 0x7f0b0242

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0b023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    :goto_17
    if-eqz v19, :cond_35

    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_35
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_37
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v2, :pswitch_data_0

    invoke-direct/range {p0 .. p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_38

    new-instance v25, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x40a00000

    invoke-static {v2}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000

    invoke-static {v5}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->setFocusOnFailedIcon()Z

    :cond_39
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->bindSeperators(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_7

    :cond_3a
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v15

    goto/16 :goto_8

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/MessageListItem;->COLOR_DATE_SEPERATOR:[I

    aget v5, v5, v31

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_a

    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_a

    :cond_3e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_3f

    const v2, 0x7f0b0241

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const v2, 0x7f0b023a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    :cond_3f
    const v2, 0x7f0b0244

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    const v2, 0x7f0b023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplaySimIcon()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f0b0239

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_40
    const v2, 0x7f0b0243

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    goto/16 :goto_b

    :cond_41
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d

    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d

    :cond_44
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_46

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v4, "sms"

    if-ne v2, v4, :cond_46

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    sget-wide v6, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_45

    sget-wide v4, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_22

    :cond_45
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    goto/16 :goto_e

    :cond_46
    sget-boolean v2, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    if-nez v2, :cond_22

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    goto/16 :goto_e

    :cond_47
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    goto/16 :goto_e

    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    :cond_49
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v6, 0x4

    cmp-long v2, v4, v6

    if-nez v2, :cond_27

    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicateMode(I)V

    goto/16 :goto_10

    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_11

    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_11

    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0033

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    if-eqz v24, :cond_4d

    invoke-virtual/range {v24 .. v24}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0037

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    :cond_4d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v2, v10}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    goto/16 :goto_12

    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_5e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4f
    :goto_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mIndicateMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIndicatorIconClicklistner(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getLinkTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getLinkTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getLinkTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v2

    if-eqz v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0032

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    if-eqz v24, :cond_52

    invoke-virtual/range {v24 .. v24}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0036

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    :cond_52
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getLinkTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mIsEnableTranslator:Z

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_53
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v2, :cond_5f

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_54

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55

    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    :cond_55
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/VAttachmentListView;->setItemClickable(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v2

    if-nez v2, :cond_57

    :cond_56
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    :cond_58
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtPause:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mFtPauseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtResume:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mFtResumeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtCancel:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mFtCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtDownloadButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mFtCancelRejectButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_59
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-nez v2, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancel:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtdontaskButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDontAskButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDownloadButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDownloadButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelRejectButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelRejectButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isRcsGroupChatMessage()Z

    move-result v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryCountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a

    :cond_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a

    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a

    :cond_5e
    const-string v2, "SearchFineer"

    const-string v4, "bind() : add Listener() for mBubbleLayout"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mOnSearchListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1b

    :cond_5f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    goto/16 :goto_1c

    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    goto/16 :goto_1c

    :cond_61
    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v2, "Mms/MessageListItem"

    const-string v4, "Contact default avatar display"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_62
    const-string v27, ""

    if-eqz v12, :cond_63

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v27

    :cond_63
    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_15

    :cond_64
    if-eqz v12, :cond_65

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/mms/data/YellowPageDataCache;->isYPNumber(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020077

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v2, "Mms/MessageListItem"

    const-string v4, "=== isYpNumber, set YP thumbnail.============="

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_15

    :cond_66
    const-string v2, "wpm"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "CBmessages"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    const-string v2, "wpm"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020287

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto/16 :goto_16

    :cond_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02027c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_16

    :cond_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v9}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_16

    :cond_6b
    sget-object v9, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1e

    :cond_6c
    const v2, 0x7f0b023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0b0242

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    goto/16 :goto_17

    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_18

    :cond_6d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_19

    :cond_6e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_19

    :cond_6f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_19

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public bindVAttachmentList(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const-wide/16 v5, 0x3

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/VAttachmentListView;->clear()V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mFreeMeessageFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mFreeMeessageFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mStatus:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mFreeMeessageFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/VAttachmentListView;->add(Lcom/android/mms/model/ImTextModel;Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mFreeMeessageFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/VAttachmentListView;->add(Lcom/android/mms/model/ImTextModel;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mStatus:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/VAttachmentListView;->add(Lcom/android/mms/model/ImTextModel;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/VAttachmentListView;->add(Lcom/android/mms/model/ImTextModel;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, v2, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/VAttachmentListView;->add(Lcom/android/mms/model/AttachmentModel;Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public changeFontSize7Step(I)V
    .locals 4
    .param p1    # I

    const-string v0, "Mms/MessageListItem"

    const-string v1, "changeFontSize7Step"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public delete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "deleteType"

    const-string v3, "resend"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public deleteRcs(Z)V
    .locals 9
    .param p1    # Z

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsDBId()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsDBId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationComposer;->onComposeMessageFlicking(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public drawTitleOnly(Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Z

    const/16 v2, 0x8

    const v1, 0x7f0b0342

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v1, 0x7f020365

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const v1, 0x7f020367

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimationTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public getThreadLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public hasFailedIconFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initComposerVariable()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    goto :goto_0
.end method

.method public isAlignLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public isCombineFwdMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiCombineAndForwardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveFocusToBubble()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->restoreMsgBackgroundForFailed()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->restoreMsgBackgroundForScheduled()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->restoreMsgBackgroundForDelayed()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onClickFailedIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/ui/BubbleViewCache;->returnCacheView(Lcom/android/mms/ui/MessageListItem;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0b021c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemRootLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0224

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListViewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0229

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgBubbleAboveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0221

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0227

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0228

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    const v1, 0x7f0b0222

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v1, 0x7f0b025f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    const v1, 0x7f0b022b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const v1, 0x7f0b022c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0232

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;

    const v1, 0x7f0b0230

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyIconView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    const v1, 0x7f0b0233

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_0
    const v1, 0x7f0b022a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    const v1, 0x7f0b0094

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v1, 0x7f0b0236

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    const v1, 0x7f0b0240

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    const v1, 0x7f0b023d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgIndicatorTextView:Landroid/widget/TextView;

    const v1, 0x7f0b020f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0b0219

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLeftLine:Landroid/widget/ImageView;

    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    const v1, 0x7f0b021b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRightLine:Landroid/widget/ImageView;

    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b022e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const v1, 0x7f0b0235

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/VAttachmentListView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const v1, 0x7f0b022d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectContentSeperator:Landroid/view/View;

    const v1, 0x7f0b0225

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0b025d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c041a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v4}, Landroid/widget/QuickContactBadge;->setImportantForAccessibility(I)V

    const v1, 0x7f0b025e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    sget-boolean v1, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    :cond_1
    const v1, 0x7f0b023e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    const v1, 0x7f0b023f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b0226

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const v2, 0x7f0b0012

    invoke-static {v2}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    const v1, 0x7f0b0343

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAddress:Landroid/widget/TextView;

    const v1, 0x7f0b0344

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadAvatarView:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0b0345

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mListDivider:Landroid/view/View;

    const v1, 0x7f0b006e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThreadSnippet:Landroid/widget/TextView;

    const v1, 0x7f0b0151

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mListInnerMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mListOuterMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleInnerMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopMargin:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyBottomMargin:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0b021f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0220

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeSystemMessageTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0223

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    const v1, 0x7f0b022f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageFtContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageFtContainer:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageBubbleGroup:Lcom/android/mms/ui/MessageListItem$FreeMessageBubbleGroup;

    const v1, 0x7f0b0246

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtlLinear:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0247

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageProgressLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b024c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtButtonLinear:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0248

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0b024a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageProgressTransfersize:Landroid/widget/TextView;

    const v1, 0x7f0b024b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageProgressTotalprogress:Landroid/widget/TextView;

    const v1, 0x7f0b024e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtPause:Landroid/widget/Button;

    const v1, 0x7f0b024f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtResume:Landroid/widget/Button;

    const v1, 0x7f0b0250

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancel:Landroid/widget/Button;

    const v1, 0x7f0b0253

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtdontaskButton:Landroid/widget/Button;

    const v1, 0x7f0b0251

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtDownloadButton:Landroid/widget/Button;

    const v1, 0x7f0b0252

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFtCancelRejectButton:Landroid/widget/Button;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0b021d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsSystemMessageContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b021e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsSystemMessageTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0245

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGCUnreadCount:Landroid/widget/TextView;

    const v1, 0x7f0b0237

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    const v1, 0x7f0b0238

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0b0231

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtContainer:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsBubbleGroup:Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;

    const v1, 0x7f0b0254

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtlLinear:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0255

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0b0256

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtSend:Landroid/widget/Button;

    const v1, 0x7f0b0259

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancel:Landroid/widget/Button;

    const v1, 0x7f0b025c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtdontaskButton:Landroid/widget/Button;

    const v1, 0x7f0b025a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtDownloadButton:Landroid/widget/Button;

    const v1, 0x7f0b025b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancelRejectButton:Landroid/widget/Button;

    :cond_4
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiCombineAndForwardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    :cond_6
    const-string v0, "Mms/MessageListItem"

    const-string v1, "******SMS Click********"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessageListItemClickByKeyPress()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_0
.end method

.method protected onSearchListItemClick()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "select_id"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "message_type"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FromSearchActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public performDelayedIconClick()V
    .locals 5

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v1

    const/16 v2, 0x69

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->delete()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v1, Lcom/android/mms/ui/MessageItem;->mReserved:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;JI)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessage(Lcom/android/mms/ui/MessageItem;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->setNextAlarm(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method public performFailedIconClick()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    const-string v2, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public performFreeMessageFTFailedIconClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->delete()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getFreeMessageFtContentPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageFtContentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->callasyncSendFT(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public performFreeMessageFailedIconClick()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->delete()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->callasyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V

    return-void
.end method

.method public performRcsFTFailedIconClick()V
    .locals 5

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mStatus:J

    const-wide/16 v2, 0xc

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performRcsFTFailedIconClick, resumeIncomingFile, sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->resumeIncomingFile(J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performRcsFTFailedIconClick, resumeSendingFile, sessionId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->resumeSendingFile(J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const-string v0, "Mms/MessageListItem"

    const-string v1, "performRcsFTFailedIconClick, uploadFile"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->rcsUploadFile(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->deleteRcs(Z)V

    goto :goto_0
.end method

.method public performRcsFailedIconClick()V
    .locals 6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsChatId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/rcs/RcsChatManager;->startChatSendService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->delete()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->delete()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsChatId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_delivery"

    invoke-static {v1, v2, v3}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public performScheduledIconClick()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c02ed

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004d

    new-instance v2, Lcom/android/mms/ui/MessageListItem$SendNowListener;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/MessageListItem$SendNowListener;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public rcsUploadFile(Z)V
    .locals 17
    .param p1    # Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentUri()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentId()J

    move-result-wide v13

    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sessionID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsFtContentUri()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListItem;->getUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    :try_start_0
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image file backup from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/mms/rcs/RcsChatManager;->startFtSendService(Landroid/content/Context;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string v1, "Mms/MessageListItem"

    const-string v2, "OutOfMemoryError occured!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isRcsGroupChatMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->groupChatattachFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    :goto_1
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadFile() reUpload is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GroupChat is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isGroupChatMessage()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/android/mms/rcs/RcsChatManager;->generateImsUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->attachFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isRcsGroupChatMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsChatId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2, v13, v14}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->createSendFileRequestForGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v11

    goto :goto_1

    :cond_3
    invoke-static {v12, v9, v13, v14}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->createSendFileRequest(Landroid/net/Uri;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v11

    goto/16 :goto_1
.end method

.method public restoreMsgBackgroundForDelayed()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v3, 0x7f02011e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public restoreMsgBackgroundForFailed()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v3, 0x7f020125

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public restoreMsgBackgroundForScheduled()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->checkBubbleStyleAsMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v3, 0x7f02012c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;

    instance-of v0, p1, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    goto :goto_0
.end method

.method public setCheckBox(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setDefaultStatus(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtlLinear:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFtButtonLinear:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtlLinear:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGCUnreadCount:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFreeMessageProgressLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public setFocusOnDelayedIcon()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setFailedMessageBackgroundDefault()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v2, 0x7f02011d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusOnFailedIcon()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setFailedMessageBackgroundDefault()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v2, 0x7f020124

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusOnScheduledIcon()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setFailedMessageBackgroundDefault()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v2, 0x7f02012b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastIndex(J)V
    .locals 3
    .param p1    # J

    const-wide/16 v1, 0x1

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    sub-long v0, p1, v1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mLastThreadIndex:J

    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setRcsDefaultStatus(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtlLinear:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFtCancel:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconInbox:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGCUnreadCount:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public updateRcsUnreadCount(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 10
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Z

    const/4 v9, 0x2

    const v8, 0x7f02026b

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mRcsDisplayedCounter:I

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-static {v3, v7}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    invoke-static {v3, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGCUnreadCount:Landroid/widget/TextView;

    invoke-static {v3, v7}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGCUnreadCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getNotificationEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGCUnreadCount:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    invoke-static {v3, v7}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-ne v1, v9, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    const v4, 0x7f0202c9

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getNotificationEnable()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_3
    if-ne v1, v7, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    const v4, 0x7f0202ca

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryButton:Landroid/widget/Button;

    invoke-static {v3, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRCSDeliveryStatus()I

    move-result v2

    :goto_2
    if-ne v2, v7, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsFtNotificationStatus()I

    move-result v2

    goto :goto_2

    :cond_7
    if-ne v2, v9, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    const v4, 0x7f020268

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsGroupChatMessage()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p2, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    const v4, 0x7f02015f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mRcsFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRcsDeliveryIcon:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method public updateUnreadCount(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 9
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Z

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v3, v4, v5, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageDisplayedCounter()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c054e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v0, v6, :cond_3

    if-gtz v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v0, v6, :cond_5

    if-lez v2, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c054d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mReadStausTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
