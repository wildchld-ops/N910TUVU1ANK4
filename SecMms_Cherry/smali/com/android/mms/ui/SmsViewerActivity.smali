.class public Lcom/android/mms/ui/SmsViewerActivity;
.super Landroid/app/Activity;
.source "SmsViewerActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/DirectCallActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_SMS_DATE:I = 0x4

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "Mms/SmsViewerActivity"

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private final DEBUG:Z

.field public final FOLDER_NAVI_COLUMN_MSG_ID:I

.field public final FOLDER_NAVI_COLUMN_MSG_TYPE:I

.field public final FOLDER_NAVI_COLUMN_THREAD_ID:I

.field private PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

.field private bMultiTouch:Z

.field private endX:I

.field private isFromFolderView:Z

.field private isWapPush:Z

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAddContactIntent:Landroid/content/Intent;

.field mBlockFlickUntilMillis:J

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDate:J

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEndSlideAnim:I

.field private mIntent:Landroid/content/Intent;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private final mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mRequestLockedMessageView:Z

.field private mRequestReservedMessageView:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSeen:I

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSmsBodyView:Landroid/widget/TextView;

.field private mSmsViewerLayout:Landroid/widget/LinearLayout;

.field private mStartSlideAnim:I

.field private mSubTitleView:Landroid/widget/TextView;

.field private mTextSizeController:Lcom/android/mms/ui/TextSizeController;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field misTalkbackOn:Z

.field private msgId:J

.field private msgUri:Landroid/net/Uri;

.field private startX:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_read:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mBlockFlickUntilMillis:J

    iput v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->DEBUG:Z

    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewerActivity$1;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$15;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$16;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "thread_id"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    iput v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_MSG_TYPE:I

    iput v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_MSG_ID:I

    iput v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_THREAD_ID:I

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SmsViewerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SmsViewerActivity;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/SmsViewerActivity;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SmsViewerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/data/ContactList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SmsViewerActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SmsViewerActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SmsViewerActivity;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SmsViewerActivity;->flickMessage(IIJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    return-object v0
.end method

.method private addRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private checkContactValidityWithDelay(I)V
    .locals 4

    const-string v0, "Mms/SmsViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContactValidityWithDelay():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsViewerActivity$5;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private drawMainTextView()V
    .locals 10

    const/4 v9, 0x1

    const-string v5, "Mms/SmsViewerActivity"

    const-string v6, "==================drawMainTextView start==============="

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v5, :cond_0

    const-string v5, "Mms/SmsViewerActivity"

    const-string v6, "mMsgItem is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    :cond_1
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_7

    const/16 v1, 0x64

    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "GATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<GATE-M>SMSTEXT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</GATE-M>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, "CB#: "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v6

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/mms/poi/PoiReflector;->extractPoiString(Landroid/app/Activity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    new-instance v6, Lcom/android/mms/ui/SmsViewerActivity$7;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/SmsViewerActivity$7;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "GATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</GATE-M>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_6
    const-string v5, "Mms/SmsViewerActivity"

    const-string v6, "==================drawMainTextView end==============="

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    goto/16 :goto_1

    :cond_8
    const-string v5, "GATE"

    const-string v6, "<GATE-M>SMSTEXT:</GATE-M>"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private drawTitle()V
    .locals 15

    const-string v0, "Mms/SmsViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTitle,isWapPush="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v5, "wpm"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b038f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0392

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getSmsSentTime(Landroid/content/Context;JZ)J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v8, v9}, Lcom/android/mms/ui/SmsViewerActivity;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    const v0, 0x7f0b0391

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleUsingDateTimeOrder()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/SmsViewerActivity;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamingTimeSchemeForCHN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->displayFixedGMTInRoamingState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeForLocal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatDateForLocal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleUsingDateTimeOrder()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v5, "sms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private flickMessage(IIJ)V
    .locals 21

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    sub-int v13, p1, p2

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_2

    if-gez v13, :cond_1

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->mBlockFlickUntilMillis:J

    cmp-long v2, p3, v4

    if-gez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_4

    const-string v2, "Mms/SmsViewerActivity"

    const-string v4, "flickMessage : mMsgItem is null!"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "type"

    const-string v5, "all"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    const/4 v2, 0x1

    if-ge v14, v2, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "type"

    const-string v5, "sms-mms"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_7

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_8

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SmsViewerActivity;->navigateMsgFolderViewMode(Z)V

    goto/16 :goto_1

    :cond_9
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x1

    if-eq v14, v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_d

    if-ge v10, v14, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_e

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    move/from16 v18, v10

    if-eqz v8, :cond_12

    if-nez v10, :cond_11

    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v18, v14, -0x1

    :goto_5
    const v20, 0x7f050004

    const v11, 0x7f050005

    :goto_6
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    :goto_7
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v2, 0x10

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_17

    if-eqz v8, :cond_15

    if-nez v18, :cond_14

    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v18, v14, -0x1

    :goto_8
    add-int/lit8 v19, v19, 0x1

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_7

    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_10

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_10
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_11
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v18, v18, -0x1

    goto :goto_5

    :cond_12
    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_13

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v18, 0x0

    :goto_9
    const v20, 0x7f050002

    const v11, 0x7f050003

    goto :goto_6

    :cond_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    :cond_14
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v18, v18, -0x1

    goto :goto_8

    :cond_15
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_16

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v18, 0x0

    goto :goto_8

    :cond_16
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    :cond_17
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    const/4 v12, 0x0

    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_19

    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_1a

    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1a
    :goto_a
    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    if-eqz v2, :cond_1b

    const-string v2, "fromFolderView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    :cond_1c
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_b
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_1e

    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_1a

    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_1f
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_b

    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "wpm"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_22

    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v2, :cond_23

    const-string v2, "isWapPush"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_1a

    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isFreeMessage"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_a
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBoxUriFromBoxId(I)Landroid/net/Uri;
    .locals 4

    const-string v1, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoxUriFromBoxId, boxId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;
    .locals 12

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms"

    invoke-static {v1}, Lcom/android/mms/ui/MessageItem;->constructProjection(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v0, 0x0

    if-nez v3, :cond_1

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v9

    const-string v1, "Mms/SmsViewerActivity"

    const-string v2, "RuntimeException :"

    invoke-static {v1, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    move-object v3, v8

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    const-string v1, "date"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    const-string v1, "seen"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    new-instance v11, Lcom/android/mms/ui/SmsViewerActivity$14;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v5, 0x1

    invoke-direct {v11, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$14;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_4

    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v10

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, v10

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v0, v10

    goto :goto_2
.end method

.method private getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 12

    const-string v1, "SmsViewFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCachedMessageItemWpm : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " msgId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wpm"

    invoke-static {v1}, Lcom/android/mms/ui/MessageItem;->constructProjection(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v9, 0x0

    if-nez v3, :cond_1

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    if-nez v3, :cond_4

    :cond_3
    :goto_2
    const/4 v1, 0x1

    if-ne v9, v1, :cond_6

    const-string v1, "SmsViewFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no msg id  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_4
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    if-nez v3, :cond_2

    goto :goto_2

    :cond_6
    const-string v1, "seen"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    new-instance v11, Lcom/android/mms/ui/SmsViewerActivity$17;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v5, 0x1

    invoke-direct {v11, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$17;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_a

    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v0, :cond_7

    :try_start_3
    iget-wide v1, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    move-object v0, v10

    :goto_4
    :try_start_4
    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v10

    goto :goto_5

    :catch_1
    move-exception v8

    goto :goto_4

    :cond_a
    move-object v0, v10

    goto :goto_3
.end method

.method private initActionBar()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsViewerActivity$2;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsViewerActivity$3;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v1, 0x42b40000

    const/high16 v3, 0x40000000

    const/high16 v4, -0x1000000

    const/high16 v5, 0x42960000

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayNameAndNumberonTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayLoation()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumberLocator(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0c02b6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v10, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41880000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41400000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41600000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->hasName()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v10, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41880000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41400000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41600000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_b
    if-eqz v10, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x41880000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v1, 0x7f0c013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method private initialize()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v0, "msgId"

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v0, "thread_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "requestLockedMessageView"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "requestReservedMessageView"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    :cond_1
    const-string v0, "isSpam"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const-string v0, "isFreeMessage"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.mms.spam.ACTION_VIEW_SPAM_SMS"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v12, 0x1

    :cond_2
    const-string v0, "fromFolderView"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    const-string v0, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromFolderView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_4

    if-eqz v11, :cond_3

    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_FREE_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "isWapPush"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const-string v0, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), isWapPush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v0, "wpm"

    invoke-direct {p0, v13, v2, v3, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v6, "wpm"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    move-object v1, v13

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v12, v0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const/4 v0, 0x0

    invoke-static {p0, v2, v3, v0}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageOptions;->setConversation(Lcom/android/mms/data/Conversation;)V

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v6, "wpm"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    move-object v1, v13

    goto :goto_1

    :cond_6
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v4, "sms"

    move-object v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    if-eqz v0, :cond_7

    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    const/4 v9, 0x2

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    :cond_8
    const-string v0, "isWapPush"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const-string v0, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), isWapPush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v0, "wpm"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "wpm"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    :cond_9
    if-eqz v11, :cond_a

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v4, "im"

    move-object v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "im"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    :cond_a
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v4, "sms"

    move-object v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    :cond_b
    const-string v0, "Mms/SmsViewerActivity"

    const-string v2, "mMsgItem is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private markAsRead(Z)V
    .locals 14

    const/4 v13, 0x2

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isReadMessage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->markSentFailedMessageAsRead()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-ne v0, v11, :cond_2

    iget v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    if-eq v0, v11, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-ne v0, v11, :cond_5

    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_3

    const-string v0, "seen"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$9;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$9;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-ne v0, v11, :cond_2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_6

    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "markAsRead : mMsgItem is null!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isReadMessage()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_8

    const-string v0, "seen"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$10;

    invoke-direct {v1, p0, v7, v8}, Lcom/android/mms/ui/SmsViewerActivity$10;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_a

    const-string v0, "seen"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v12

    const-string v0, "read"

    aput-object v0, v3, v11

    const-string v0, "seen"

    aput-object v0, v3, v13

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_c

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v11, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_read:Z

    :cond_b
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v11, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz p1, :cond_f

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    new-instance v2, Lcom/android/mms/ui/SmsViewerActivity$11;

    invoke-direct {v2, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$11;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-static {p0, v0, v1, v12, v2}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForSmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$12;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$12;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$13;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$13;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private markSentFailedMessageAsRead()V
    .locals 6

    const/4 v5, 0x1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewerActivity$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewerActivity$8;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 22

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SmsViewerActivity;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v15

    const/4 v2, 0x1

    if-ge v15, v2, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eq v15, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode : bFlicktoNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "curPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    if-ge v10, v15, :cond_5

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move/from16 v19, v10

    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode : bFlicktoNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "nextPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    if-nez v10, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v19, v15, -0x1

    :goto_2
    const v21, 0x7f050004

    const v12, 0x7f050005

    :goto_3
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    const/4 v14, -0x1

    :goto_4
    const-string v2, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "m_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsMsgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /MESSAGE_TYPE_NOTIFICATION_IND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x82

    if-ne v14, v2, :cond_d

    if-eqz p1, :cond_b

    if-nez v19, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v19, v15, -0x1

    :goto_5
    add-int/lit8 v20, v20, 0x1

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    goto :goto_4

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v15, -0x1

    if-ne v10, v2, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v19, 0x0

    :goto_6
    const v21, 0x7f050002

    const v12, 0x7f050003

    goto :goto_3

    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :catch_0
    move-exception v11

    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode total count :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current position :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v15, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v19, 0x0

    goto :goto_5

    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    add-int/lit8 v2, v15, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_0

    const/4 v13, 0x0

    const-string v2, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity : sms : nextMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide/from16 v0, v16

    invoke-virtual {v13, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v13, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v2, :cond_e

    const-string v2, "isWapPush"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_e
    :goto_7
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isFromFolderView:Z

    if-eqz v2, :cond_f

    const-string v2, "fromFolderView"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    const-string v2, "Mms/SmsViewerActivity"

    const-string v4, "startActivity"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_10
    const-string v2, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity : mms : nextMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v13, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_8
    const-string v2, "msgId"

    move-wide/from16 v0, v16

    invoke-virtual {v13, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v13, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :cond_11
    new-instance v13, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_8
.end method

.method private removeRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    iput-object p2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p4, p5, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const-string v0, "Mms/SmsViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedUrl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startYellowPage(Ljava/lang/String;)V
    .locals 3

    const-string v1, "Mms/SmsViewerActivity"

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

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateActionBarTextSize()V
    .locals 9

    const/high16 v8, 0x3f800000

    const/4 v3, 0x1

    const/high16 v7, 0x40000000

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v6, 0x41880000

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v6, 0x41400000

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v6, 0x41600000

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    packed-switch v0, :pswitch_data_0

    and-int/lit16 v5, v0, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    iput-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :pswitch_0
    iget-boolean v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-eq v5, v4, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$6;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/mms/ui/SmsViewerActivity$6;-><init>(Lcom/android/mms/ui/SmsViewerActivity;J)V

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 6

    const v5, 0x7f0c013b

    const/4 v4, 0x1

    const-string v2, ""

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0c0100

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0c0163

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "Unknown address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "Verizon Global Support"

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "mContactList is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "mRecipients is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "Mms/SmsViewerActivity"

    const-string v2, "mContactList is null!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->updateActionBarTextSize()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0400ab

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v4, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0b038d

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsViewerLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b02bc

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initialize()V

    const v4, 0x7f0b038a

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    const v4, 0x7f0b038c

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLinksClickable(Z)V

    new-instance v4, Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v4}, Lcom/android/mms/ui/TextSizeController;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    new-instance v4, Landroid/view/ScaleGestureDetector;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v4, v5, v6}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->createDirectCallingManager()V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v4, v5, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    const-string v5, "clipboardEx"

    invoke-virtual {v4, v5}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0, v8}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x320

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mBlockFlickUntilMillis:J

    return-void

    :cond_5
    const v4, 0x7f0b03bc

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    :cond_1
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const-string v1, "VOL"

    const-string v2, "vol up, SUPER!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa8

    if-ne p1, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    const/16 v4, 0x221

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/FontSizeController;->increaseFontSize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    move v1, v2

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa9

    if-ne p1, v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    const/16 v4, 0x222

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/FontSizeController;->decreaseFontSize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    move v1, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_2
        0xf2 -> :sswitch_2
        0xf3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_2
        0xf2 -> :sswitch_2
        0xf3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/16 v4, 0x1d

    const/4 v0, 0x1

    const-string v1, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/SmsViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->viewContactDetailORList()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(), isWapPush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-ne v1, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms-sms/wap-push-messages/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_2
    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    const/16 v1, 0x12c

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->checkContactValidityWithDelay(I)V

    return-void

    :cond_3
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->addRecipientsListener()V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TextSizeController;->addTextViewToControl(Landroid/widget/TextView;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->removeRecipientsListener()V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "[onUpdate] contact updated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$4;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScrollTop()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    const v0, 0x7f0b038b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->delayedScrollTo(Landroid/widget/ScrollView;I)V

    return-void
.end method

.method public viewContactDetailORList()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x24080000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v5, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    sget-object v5, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v5, "Mms/SmsViewerActivity"

    const-string v6, "getPhonemuber address is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "Mms/SmsViewerActivity"

    const-string v6, "Activity not found do not anyting!!!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
